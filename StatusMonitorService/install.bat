mkdir "C:\Program Files\Status Monitor" 2> NUL
mkdir "C:\Program Files\Status Monitor\Logs" 2> NUL

net stop "StatusMonitor"

xcopy .\App.config  "C:\program files\Status Monitor\StatusMonitorService.exe.config"
xcopy /exclude:excludes.txt /Y .\bin\Debug\*.*  "C:\Program Files\Status Monitor" 

installutil /u "C:\program files\Status Monitor\StatusMonitorService.exe"

installutil "C:\program files\Status Monitor\StatusMonitorService.exe"
