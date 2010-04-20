echo off

CALL Source.bat

SET SRC=%SOURCE%\mcs\class\%1
SET DEST=%LIB%\mcs\class\%1

SET PROJECT=%1
IF NOT "%2"=="" SET PROJECT=%2

echo on

Tools\Mosa.Tools.Mono.UpdateProject.exe "%DEST%\%PROJECT%.csproj" +updateproject +original +update +mosa +mono "-source:%SRC%" "-destination:%DEST%"
