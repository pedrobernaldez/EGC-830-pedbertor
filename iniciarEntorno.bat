@echo off
mode con cols=80 lines=20

echo Fichero de inicializacion del entorno de Decide Ganimedes Cabina

echo Instalando requisitos
pip install -r requirements.txt

echo Moviendose a decide
CD decide/

echo Realizando makemigrations
python manage.py makemigrations

echo Realizando migrate
python manage.py migrate

echo Creando superusuario decide
python manage.py createsuperuser --email decide

echo FIN
pause
exit