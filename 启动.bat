@echo off
chcp 65001
set SUPERSET_HOME=%cd%\db
set SUPERSET_SECRET_KEY="dFY9WJhbrsZzOGP4QKqa2M4Ct7zvuzI6"
set FLASK_APP=superset

if exist "init.ini" (
.\Scripts\superset run -h 0.0.0.0 -p 8088 --with-threads --reload

) else (
mkdir db
.\python.exe -m pip uninstall apache_superset -y
.\python.exe -m pip install apache_superset  -i https://mirrors.aliyun.com/pypi/simple/
.\Scripts\superset db upgrade
.\Scripts\superset fab create-admin --username admin --firstname f --lastname s --email admin@qq.com --password admin
.\Scripts\superset load_examples
.\Scripts\superset init
echo ************************
echo 管理员账号：admin
echo 管理员密码：admin
echo 管理员邮箱：admin@qq.com
echo 数据库地址：%SUPERSET_HOME%
echo ************************
type nul > "init.ini"
echo 初始化安装完成！！！
.\Scripts\superset run -h 0.0.0.0 -p 8088 --with-threads --reload

)


