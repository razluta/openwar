; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "OpenWar"
#define MyAppVersion "0.0.1"
#define MyAppPublisher "Andreas T Jonsson"
#define MyAppURL "http://www.openwar.io"
#define MyAppExeName "openwar.exe"
#define MySetupBaseName "OpenWar"
#define MyAppRoot "../.."

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{0D36755D-F8B1-4D71-AD5B-2E077EF864FD}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DisableProgramGroupPage=yes
LicenseFile={#MyAppRoot}\LICENSE
OutputBaseFilename=openwar-{#MyAppVersion}-win64
SetupIconFile={#MyAppRoot}\tools\package\icon.ico
Compression=lzma
SolidCompression=yes
ArchitecturesInstallIn64BitMode=x64

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"

[Files]
Source: "{#MyAppRoot}\openwar.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyAppRoot}\tools\package\dependencies\libFLAC-8.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyAppRoot}\tools\package\dependencies\libmikmod-2.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyAppRoot}\tools\package\dependencies\libmodplug-1.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyAppRoot}\tools\package\dependencies\libogg-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyAppRoot}\tools\package\dependencies\libvorbis-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyAppRoot}\tools\package\dependencies\libvorbisfile-3.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyAppRoot}\tools\package\dependencies\SDL2.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyAppRoot}\tools\package\dependencies\SDL2_mixer.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyAppRoot}\tools\package\dependencies\smpeg2.dll"; DestDir: "{app}"; Flags: ignoreversion

Source: "{#MyAppRoot}\data\*"; DestDir: "{app}\data"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "{#MyAppRoot}\tools\package\dependencies\timidity\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{commonprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent
