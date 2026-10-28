# Data Classification and Retention Guidelines for TalTech HPC Users

Version 1.1 | 2026-10-23 | Companion to the Acceptable Use Policy (AUP) v1.1

The cluster is shared by many projects with very different data: published open-source code next to unpublished industry data, personal data or export-controlled research. Not all of it can be handled the same way. This guide explains how we label data, what that means for you, and how long data stays on the cluster.

It summarises the HPC Centre's Data Classification and Data Retention policies. If you are unsure about anything, ask us before you upload data, not after.

## Four levels

Every project's data has one of four levels. The level decides how the data is stored, who can access it, how it may be transferred and how it is deleted.

| Level | What it is | Typical examples |
| --- | --- | --- |
| **PUBLIC** | Already published or explicitly meant for immediate release. | Published papers and datasets, open-source code, public documentation. |
| **INTERNAL** (default) | Not public, but not particularly sensitive. For TalTech and your project collaborators only. | Job scripts, workflow configs, preliminary results, project directory structures. |
| **SENSITIVE** | Disclosure would cause real harm: competitive, commercial, contractual or reputational. | Unpublished results with commercial value, data under embargo or NDA, partner or industry data, pre-patent work. |
| **CONFIDENTIAL** | Disclosure would cause serious harm or breach the law. | Personal data (GDPR), health or biometric data, export-controlled research (EU dual-use, ITAR/EAR), security-classified work. |

Two points people get wrong:

- **Unpublished is not public.** Data becomes PUBLIC only once it has actually been published or released, not when you intend to publish it.
- **The highest level wins.** If one directory holds INTERNAL scripts and SENSITIVE results, it is handled as SENSITIVE. If only part of a project needs a higher level, tell us which directories. We can protect those separately instead of treating the whole project at the higher level.

If you do nothing, your data is treated as **INTERNAL** (AUP section 4.1).

## Which level is mine?

Go through these in order and stop at the first "yes":

1. Does the data include personal data (anything about an identifiable person)? **CONFIDENTIAL.** Contact us before uploading; the TalTech Data Protection Officer must be involved.
2. Is it export-controlled, security-classified or otherwise legally restricted? **CONFIDENTIAL.** Contact us before uploading; TalTech Legal must be involved.
3. Is it covered by an NDA, embargo, or a funder or partner confidentiality requirement? **SENSITIVE** (at least).
4. Would disclosure give a competitor an advantage, or harm TalTech or a partner? **SENSITIVE.**
5. Already public or meant for immediate release? **PUBLIC.**
6. None of the above? **INTERNAL.**

If in doubt, pick the higher level and ask us. Moving a level down later is easy. Cleaning up after data was handled too loosely is not.

## What you need to do

The project PI is responsible for classifying the project's data. We implement the controls.

- **Before you upload SENSITIVE or CONFIDENTIAL data**, contact HPC support (<hpcsupport@taltech.ee>) so we can agree the setup first: directory permissions, node reservations, encryption, an isolated environment where needed. Do not upload first and ask later (AUP section 4.2).
- **Register the level.** SENSITIVE and CONFIDENTIAL data must be registered with HPC support. We record the level, the PI, the directories it applies to, and any funder or contractual requirements in the HPC classification register. Directories are deliberately not marked with visible labels; the register is what controls how they are handled.
- **Tell us if something changes.** If results get published, an embargo ends, a funder adds a requirement, or you discover personal data in a project that did not have any, tell us. Raising a level (for example INTERNAL to CONFIDENTIAL) takes effect immediately. Lowering a level needs the PI's written confirmation.
- **Never lower the level yourself** and never move data to a less protected location.

What changes between levels, in short:

|  | PUBLIC | INTERNAL | SENSITIVE | CONFIDENTIAL |
| --- | --- | --- | --- | --- |
| Who has access | Anyone with an account | Project members | Named project members, approved by the PI | Named individuals only, each approved and reviewed |
| Transfer | Any | Encrypted (SSH/SFTP) | Encrypted only; external transfer needs PI approval | Encrypted; written approval and logging for every external transfer |
| Recorded in | Optional | Project register | Classification register | Classification register plus access log |
| Deletion | Normal | Normal | Secure overwrite where possible | Secure erase or physical destruction, documented |

If you export a page or document containing SENSITIVE or CONFIDENTIAL content (from Confluence or elsewhere), label the exported file yourself before sharing it. Exports do not carry the label automatically.

## How long data stays on HPC

HPC is not an archive and not a backup (AUP section 4.4). Data does not stay forever, and the clock starts when your **project ends**.

| Level | Kept on HPC at most |
| --- | --- |
| PUBLIC | Until 1 year after project end, like INTERNAL. Long-term copies of published data belong in the TalTech data repository (Invenio), not on HPC |
| INTERNAL | Until 1 year after project end |
| SENSITIVE | Until 3 years after project end, unless a funder or partner requires longer; reviewed every year |
| CONFIDENTIAL, personal data | As short as possible: deleted once the purpose is fulfilled. The period is agreed with the Data Protection Officer before the project starts |
| CONFIDENTIAL, other | As set by the law or contract that applies |

Some things override these defaults:

- **Funder and partner requirements.** Funders such as the Estonian Research Council or Horizon Europe, and partner agreements, may require data to be kept longer (sometimes many years). Tell us about this when the project starts. The PI declares it. If we are not told, the defaults above apply.
- **Legal holds.** If TalTech Legal places a hold on data, it is not deleted until the hold is lifted.
- **Extensions.** If you need data kept longer, the PI asks in writing with a reason, and the HPC Director approves. An extension sets a new end date. It is not permanent.
- **Yearly review of SENSITIVE data.** Once a year, HPC support asks the PI to confirm that SENSITIVE data is still needed and still correctly classified. Data that is no longer needed is deleted, and data that no longer needs this level is reclassified.

### When your project ends

1. The PI tells HPC support that the project is finished. If an allocation expires without renewal, that counts as the end.
2. The PI decides what happens to the data: **delete it**, **keep it under a declared retention period**, or **move it to an external repository** and confirm it arrived.
3. We remove project members' access.
4. Whatever is left is deleted when its retention period runs out. **The PI is told at least 30 days before.**

The AUP asks you to archive or transfer completed project data promptly after project closure (AUP section 4.5). Allocations that stay far past their closure date may be cleaned up by HPC administrators.

Keep your own copy of anything you need. After deletion we cannot get it back.

### Deletion

For SENSITIVE and CONFIDENTIAL data, deleting means secure overwrite (where possible) or cryptographic erasure, not just removing the file, and it covers backup copies too. Each deletion is logged.

### Other data we keep

| Data | Kept |
| --- | --- |
| Your account details, SSH keys, project membership | Until 1 year after you leave or your last project ends |
| Job accounting records (who ran what, when, with what resources; not data contents) | 2 years |
| System and security logs | 6 to 24 months, depending on the log |

## Contacts

| Question | Contact |
| --- | --- |
| Classification, registering a project, project end | <hpcsupport@taltech.ee> |
| Personal data (GDPR) | TalTech Data Protection Officer: <andmekaitse@taltech.ee> |
| Export control or legal questions | TalTech Legal: <juristid@taltech.ee> |
