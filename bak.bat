@echo off
if %%1 == -r ( 
	goto runs)

:runs
set backupDir=F:\.backup.jafe.info
set dDir=%~d0
set fDir=%~p0
set daytime=%date:~0,4%%date:~5,2%%date:~8,2%-%time:~0,2%%time:~3,2%%time:~6,2%
set destDir=%backupDir%\%dDir:~0,1%%fDir%%daytime%
if not exist %destDir% (
	mkdir %destDir%
	)
echo Current: %dDir%%fDir%
echo Destination : %destDir%

if exist *.doc copy  *.doc %destDir% 
if exist *.docx copy  *.docx %destDir% 
if exist *.ppt copy  *.ppt %destDir% 
if exist *.pptx copy  *.pptx %destDir% 
if exist *.xls copy  *.xls %destDir% 
if exist *.xlsx copy  *.xlsx %destDir% 
if exist *.txt copy  *.txt %destDir% 

if exist *.xsd copy  *.xsd %destDir% 
if exist *.outmol copy  *.outmol %destDir% 
if exist *.xms copy  *.xms %destDir% 

if exist bak_*.jpg copy  bak_*.jpg %destDir% 
if exist bak_*.png copy  bak_*.png %destDir% 
if exist bak_*.gif copy  bak_*.gif %destDir% 
if exist bak_*.bmp copy  bak_*.bmp %destDir% 

if exist *.java copy  *.java %destDir% 
if exist *.bat copy  *.bat %destDir% 
if exist *.py copy  *.py %destDir% 
if exist *.c copy  *.c %destDir% 
if exist *.cpp copy  *.cpp %destDir% 
if exist *.m copy  *.m %destDir% 
if exist *.js copy  *.js %destDir% 
if exist *.html copy  *.html %destDir% 
if exist *.css copy  *.css %destDir% 
if exist *.jsp copy  *.jsp %destDir% 
if exist *.c copy  *.c %destDir% 

echo esc.. 
echo 5
ping -n 2 127.0.0.1>nul 2>nul
echo 4
ping -n 2 127.0.0.1>nul 2>nul
echo 3
ping -n 2 127.0.0.1>nul 2>nul
echo 2
ping -n 2 127.0.0.1>nul 2>nul
echo 1
ping -n 2 127.0.0.1>nul 2>nul
