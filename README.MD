This repository is used to build www.spkelly.com

Website is built using Hugo framework https://gohugo.io/ and hosted with Cloudflare Pages

## Developing

Install hugo-extended (homebrew installs the extended version automatically) on platform for compilation of scss files.

https://github.com/gohugoio/hugo/releases

Work with changes live:

```
./start.sh
```
or
```bash
hugo server --ignoreCache --forceSyncStatic
```

and then access the test site at http://localhost:1313/

## Deployment

Handled automatically by Cloudflare pages anytime a commit is made to this repository/branch.

## Notes
- The maximum file size for a single Cloudflare Pages site asset is 25MB.

- Can strip exif with exiftool:
```bash
exiftool -all= -overwrite_original -r .
```
