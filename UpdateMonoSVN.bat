CALL Source.bat

if exist %SOURCE% goto next

mkdir %SOURCE%

svn co svn://anonsvn.mono-project.com/source/trunk/mcs %SOURCE%/mcs

:next

svn update %SOURCE%/mcs

pause
