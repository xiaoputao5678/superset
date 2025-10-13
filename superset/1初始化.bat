@echo off
chcp 65001
set SUPERSET_HOME=%cd%\db
del %SUPERSET_HOME%\examples.db
del %SUPERSET_HOME%\superset.db
.\python.exe -m pip uninstall apache_superset -y
echo "初始化完成,可以关闭窗口了！！！"
timeout /t 30 /nobreak
