
## Lec 2

Q1:
ls -laht --color=auto
Q2:
Refer to `marco.sh` under folder `shell`
Q3:
Refer to `run_mys42.sh` under folder `shell`
Q4:
find . -name "*.html" -print0 | xargs tar -cf all_htmls.tar
Q5:
find . -type f -exec stat -f "%m %N" {} + | sort
