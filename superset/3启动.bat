@echo off
chcp 65001                                
set SUPERSET_HOME=%cd%\db
echo "数据库存放路径："%SUPERSET_HOME%
set SUPERSET_SECRET_KEY="dFY9WJhbrsZzOGP4QKqa2M4Ct7zvuzI6"
set FLASK_APP=superset
.\Scripts\superset run -h 0.0.0.0 -p 8088 --with-threads --reload