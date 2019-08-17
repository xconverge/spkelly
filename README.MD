This repository is used to build www.spkelly.com

Website is built using Hugo framework https://gohugo.io/

## Layout of repository

docs/
 - is the deployed/static verison of the website which Github Pages is serving

All other directories are used by hugo to generate the static site.

## Developing

Install hugo-extended on platform for compilation of scss files.

https://github.com/gohugoio/hugo/releases

Work with changes live:

```
hugo server --ignoreCache --forceSyncStatic
```

## Deployment

```
hugo
```

Will generate compiled version of site into docs/. Then Git add, commit, and push compiled changes.

To clean the docs directory without removing necessary files (docs/CNAME needs to stay but can be protected if you copy pre-commit into the .git/hooks folder):

```
rm -rf docs/*
```
