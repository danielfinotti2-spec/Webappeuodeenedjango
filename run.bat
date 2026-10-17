
@echo off
title Django - djangobase
cd /d "%~dp0"

echo ========================================
echo       INICIANDO PROJETO DJANGO
echo ========================================
echo.

if not exist ".venv\Scripts\activate.bat" (
    echo [ERRO] Ambiente virtual nao encontrado!
    echo Execute primeiro: python -m venv .venv
    pause
    exit /b 1
)

call .venv\Scripts\activate.bat

echo [1/3] Atualizando pip...
python -m pip install --upgrade pip

echo.
echo [2/3] Instalando dependencias...
if exist "requirements.txt" (
    pip install -r requirements.txt
) else (
    pip install django
)

echo.
echo [3/3] Aplicando migracoes...
python manage.py migrate

echo.
echo ========================================
echo Servidor Django iniciando...
echo Acesse: http://127.0.0.1:8000/
echo ========================================
echo.

python manage.py runserver

pause
