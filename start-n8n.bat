@echo off
set N8N_USER_FOLDER=%~dp0n8n_data
set NODE_FUNCTION_ALLOW_EXTERNAL=music-metadata
set NODES_EXCLUDE=[]
set PATH=%~dp0bin\ffmpeg-master-latest-win64-gpl\bin;%PATH%
if not exist "%N8N_USER_FOLDER%" mkdir "%N8N_USER_FOLDER%"
echo Iniciando n8n com dados em: %N8N_USER_FOLDER%
call npx n8n start
pause
