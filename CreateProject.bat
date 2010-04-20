CALL Source.bat

SET SRC=%SOURCE%\mcs\class\%1
SET DEST=%LIB%\mcs\class\%1

if not exist "Patches\%1.dll.mosa.sources" goto one


:two
Tools\Mosa.Tools.Mono.CreateProject.exe "%DEST%\%1.csproj" -s "%SRC%\%1.dll.sources" -c "%2" -ref "%3" -s "Patches\%1.dll.mosa.sources"

goto end

:one
Tools\Mosa.Tools.Mono.CreateProject.exe "%DEST%\%1.csproj" -s "%SRC%\%1.dll.sources" -c "%2" -ref "%3" 

:end
