第4题：
```bash
find ./test -name "*.html" -print0 | xargs -0 tar cf html1.tar
```

第5题：
```bash
fd -t f | xargs -d '\n' ls -lt
```
