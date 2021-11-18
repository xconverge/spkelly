This repository is used to build www.spkelly.com

Website is built using Hugo framework https://gohugo.io/ and hosted with Cloudflare Pages

## Developing

Install hugo-extended on platform for compilation of scss files.

https://github.com/gohugoio/hugo/releases

Work with changes live:

```
./start.sh
```
or
```
hugo server --ignoreCache --forceSyncStatic
```

and then access the test site at http://localhost:1313/

## Deployment

Handled by Cloudflare Pages
