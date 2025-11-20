@echo off
REM ----------------------------
REM 自动 Git push 脚本
REM ----------------------------

REM 获取当前时间
for /f "tokens=1-4 delims=/ " %%a in ('date /t') do (
    set mydate=%%c-%%a-%%b
)
for /f "tokens=1-2 delims=: " %%a in ('time /t') do (
    set mytime=%%a-%%b
)
set datetime=%mydate%_%mytime%

echo 正在 add 所有修改...
git add .

echo 正在 commit...
git commit -m "update %datetime%"

echo 正在 push 到 GitHub...
git push

echo 完成！所有修改已推送到 GitHub
pause
