$configFile = (Join-Path $(Split-Path -parent $MyInvocation.MyCommand.Definition) 'config.xml')

Install-ChocolateyPackage 'office2013propluspreview' 'exe' "/extract:office /log:log.txt /quiet /norestart" 'http://care.dlservice.microsoft.com//dl/download/4/7/1/4712B4E1-4DD9-4468-B8A4-507D7F988B1F/professionalplus_en-us_x86.exe?lcid=1033' 'http://care.dlservice.microsoft.com//dl/download/4/7/1/4712B4E1-4DD9-4468-B8A4-507D7F988B1F/professionalplus_en-us_x64.exe?lcid=1033'
Install-ChocolateyInstallPackage 'office2013propluspreview' 'exe' "/config $configFile" 'office\setup.exe'