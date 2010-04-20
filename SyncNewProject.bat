CALL Source.bat

set SRC=%SOURCE%\mcs\class\%1
set DEST=%LIB%\mcs\class\%1

Tools\Mosa.Tools.Mono.UpdateProject.exe "%DEST%\%1.csproj" +updateproject +original +update +mosa +mono -source=%SRC% -destination=%DEST%
