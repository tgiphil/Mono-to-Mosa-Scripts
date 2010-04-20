echo off

CALL Source.bat

SET SRC=%SOURCE%\mcs\class\%1
SET DEST=%LIB%\mcs\class\%1

SET PROJECT=%1
IF NOT "%4"=="" SET PROJECT=%4

echo on

IF NOT EXIST "Patches\%1.dll.mosa.sources" GOTO one


:two
Tools\Mosa.Tools.Mono.CreateProject.exe "%DEST%\%PROJECT%.csproj" "-s:%SRC%\%1.dll.sources" -c:%2 -ref:%3 -s:Patches\%1.dll.mosa.sources

GOTO end

:one
Tools\Mosa.Tools.Mono.CreateProject.exe "%DEST%\%PROJECT%.csproj" "-s:%SRC%\%1.dll.sources" -c:%2 -ref:%3 

:end
