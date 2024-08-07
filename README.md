# TalTech HPC Center User guides source code

The generation of the static html site is done using mkdocs
documentation: https://www.mkdocs.org/user-guide/styling-your-docs/#using-the-docs_dir

## Running locally

To run locally, use the following commands:

```
pip install -r requirements.txt
pip install sphinx-autobuild
sphinx-autobuild docs public
```

This will build the source and serve it to http://127.0.0.1:8000 which you can check out in your browser.
