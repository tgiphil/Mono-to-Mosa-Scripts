CALL Source.bat

CALL CreateProject.bat corlib "NET_1_1;NET_2_0;INSIDE_CORLIB"
CALL CreateProject.bat System "NET_1_1;NET_2_0;CONFIGURATION_2_0" "corlib"
CALL CreateProject.bat System.XML "NET_1_1;NET_2_0" "corlib;System"
CALL CreateProject.bat Mono.CompilerServices.SymbolWriter "NET_1_1;NET_2_0" "corlib"
CALL CreateProject.bat Mono.Posix "NET_1_1;NET_2_0" "corlib;System"
CALL CreateProject.bat System.Core "NET_1_1;NET_2_0;NET_3_5" "corlib;System;Mono.Posix"
CALL CreateProject.bat Mono.Security "NET_1_1;NET_2_0" "corlib;System"

CALL SyncProject.bat corlib
CALL SyncProject.bat System
CALL SyncProject.bat System.XML
CALL SyncProject.bat Mono.CompilerServices.SymbolWriter
CALL SyncProject.bat Mono.Posix
CALL SyncProject.bat System.Core
CALL SyncProject.bat Mono.Security

CALL PatchLibraries.bat

pause
