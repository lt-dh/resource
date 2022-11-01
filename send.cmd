@echo off
set pub=D:\aboutGithub\blog\public
set des=C:\Users\Administrator\Desktop\resource\
IF EXIST %pub% (
rmdir %pub% /s/q
hexo generate
copy %pub%\* %des% /s/q
git add .
git commit -m "上传"
git push
echo success
)
