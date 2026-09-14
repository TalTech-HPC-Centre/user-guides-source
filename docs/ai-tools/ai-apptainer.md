## Run

```bash
run-ai claude-desktop
run-ai claude
run-ai chatgpt
run-ai codex-desktop
run-ai codex
run-ai versions
```

The launcher always creates and bind-mounts host `$HOME/AI-works` at
`/workspace` inside the container and starts every command there. The directory
from which `run-ai` is invoked is never mounted. This prevents an accidental
launch from `$HOME` from exposing the real home directory. Add other required
paths explicitly:

```bash
AI_BIND=/data:/data run-ai claude
```

Multiple Apptainer bind specifications may be comma-separated in `AI_BIND`.
Application state and sign-in data persist under
`~/.local/share/ai-suite-apptainer`. Override this with `AI_STATE_DIR`.
For GUI selection of files outside `$HOME/AI-works`, bind their parent
directories in advance with `AI_BIND`.

The launcher disables the automatic home bind, then bind-mounts
`$AI_STATE_DIR/home` at the normal `$HOME` pathname inside the container. Thus
`$HOME` remains, for example, `/gpfs/home/username`, while its visible contents
come only from the isolated state directory. The real host home is not mounted,
and SingularityCE's restriction against overriding `HOME` through `--env` is
avoided.

## First ChatGPT login

In this container setup, authenticate with the Codex CLI before starting the
ChatGPT desktop app. The desktop app's direct browser handoff can fail when the
browser callback crosses the container and VNC desktop boundary, leaving the
app at its sign-in page with `another login is in progress`.

First, make sure no earlier ChatGPT process is holding a pending login:

```bash
pkill -TERM -u "$USER" -x chatgpt 2>/dev/null || true
```

Then start the CLI login flow and complete it in the browser:

```bash
run-ai codex login
run-ai codex login status
```

After the status command confirms the login, start the desktop app:

```bash
run-ai chatgpt
```

The credentials persist in the launcher's isolated application state under
`~/.local/share/ai-suite-apptainer`, so these steps normally only need to be
repeated after logging out or removing that state directory. Do not copy or
share browser callback URLs because they may contain short-lived credentials.

## Graphics and desktop integration

`run-ai` forwards X11 or Wayland plus the desktop session runtime directory,
which normally contains D-Bus, PipeWire, and PulseAudio sockets. On an NVIDIA
workstation, request host driver injection with:

```bash
AI_GPU=nvidia run-ai claude-desktop
```

Electron and Chromium normally use their own process sandbox. Some Rocky 8
sites disable unprivileged user namespaces, which can prevent either GUI from
starting. First ask the administrator to enable a supported browser sandbox. As
a last resort, the following disables that additional sandbox; the SIF remains
an Apptainer container, but this is a real reduction in defense-in-depth:

```bash
AI_DISABLE_BROWSER_SANDBOX=1 run-ai chatgpt
```

The same switch works for `claude-desktop` and the native `chatgpt` app. If the
native ChatGPT preview encounters a distribution-specific problem, use the
included web fallback with `run-ai chatgpt-web`.

## Claude Cowork and KVM

Claude Desktop's Cowork feature starts a local virtual machine. It is less
portable than ordinary chat inside Apptainer and needs `/dev/kvm`, host group
permission, hardware virtualization, sufficient RAM, and about 25 GB of extra
space. If those prerequisites are met, expose KVM with:

```bash
AI_KVM=1 run-ai claude-desktop
```

This may still be blocked by the Rocky host's Apptainer or site security policy.
Claude chat and Claude Code do not require KVM.

## Operational notes

- The container shares the host network by default.
- Host `$HOME/AI-works` is writable as `/workspace`; the launch directory is
  not mounted. Explicitly requested `AI_BIND` paths remain writable with the
  invoking user's host permissions unless marked read-only.
- `ANTHROPIC_API_KEY` is intentionally not forwarded through `--cleanenv`.
  If API-key authentication is required, pass it for that invocation with
  Apptainer's `--env` mechanism or enter it after starting a container shell.

