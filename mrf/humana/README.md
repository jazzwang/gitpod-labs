# README

[TOC]

## Development Notes

- ( 2023-05-01 11:30:11 )
- sample 0.1% records from data/2023-03-27_humana_toc.json.gz
```bash
$ bin/run-sample-toc.sh
$ cat sample-toc/part-00000-0fa99f35-b2cf-4720-ba9b-9c7ec52949a4-c000.json | jq .name | tr -d '"' | sed 's#^#download #' | pbcopy
```
- rewrite `bin/2023-03-27_sample_humana_toc.sh` with the result