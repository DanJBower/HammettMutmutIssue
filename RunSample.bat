@ECHO OFF
setlocal

cd "%~dp0"

@REM Run with PyTest to show it works normally
IF EXIST .mutmut-cache DEL .mutmut-cache
mutmut run --paths-to-mutate src/sample --tests-dir src/tests --simple-output --rerun-all

@REM Run with File 1 Hammett
IF EXIST .mutmut-cache DEL .mutmut-cache
mutmut run --paths-to-mutate src/sample/some_file.py --tests-dir src/tests --simple-output --rerun-all --runner "python -m hammett -x -q src/tests"

@REM Run with File 2 Hammett
IF EXIST .mutmut-cache DEL .mutmut-cache
mutmut run --paths-to-mutate src/sample/some_other_file.py --tests-dir src/tests --simple-output --rerun-all --runner "python -m hammett -x -q src/tests"

@REM Run with Both Files Hammett
IF EXIST .mutmut-cache DEL .mutmut-cache
mutmut run --paths-to-mutate src/sample --tests-dir src/tests --simple-output --rerun-all --runner "python -m hammett -x -q src/tests"

endlocal
pause
