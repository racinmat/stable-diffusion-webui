@echo off

:: this sets both python and git correctly
call environment.bat

set PYTHON=
set GIT=
set VENV_DIR=
set COMMANDLINE_ARGS=

call webui.bat
