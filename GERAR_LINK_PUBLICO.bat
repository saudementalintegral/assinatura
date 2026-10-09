@echo off
chcp 65001 >nul
title Link Publico - Assinatura Digital Dra. Tania Abreu
cd /d "%~dp0"

echo ========================================================
echo   GERANDO LINK PUBLICO PARA OS PACIENTES
echo   Deixe esta janela ABERTA enquanto o link for usado.
echo ========================================================
echo.

where node >nul 2>nul
if errorlevel 1 (
  echo [ERRO] Node.js nao encontrado. Instale em https://nodejs.org e rode de novo.
  pause
  exit /b 1
)

if not exist "cloudflared.exe" (
  echo Baixando o programa de link publico - so na primeira vez...
  powershell -NoProfile -Command "Invoke-WebRequest -Uri 'https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-windows-amd64.exe' -OutFile 'cloudflared.exe'"
  if not exist "cloudflared.exe" (
    echo [ERRO] Nao foi possivel baixar. Verifique a internet.
    pause
    exit /b 1
  )
)

echo Ligando o site no seu computador...
start "Servidor do site - NAO FECHE" /min cmd /c "npx --yes serve -l 8080 ."
timeout /t 20 >nul

echo.
echo ========================================================
echo   PROCURE ABAIXO UMA LINHA COM:  https://....trycloudflare.com
echo   ESSE E O LINK. Copie e mande para a secretaria/paciente.
echo ========================================================
echo.
cloudflared.exe tunnel --url http://localhost:8080
pause
