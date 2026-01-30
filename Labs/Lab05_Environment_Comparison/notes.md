# Notes

## Lab 05: Environment Comparison of Terminal vs Cron vs systemd

## Terminal.env output

COLORTERM=truecolor
COMMAND_NOT_FOUND_INSTALL_PROMPT=1
DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1001/bus
DESKTOP_SESSION=lightdm-xsession
DISPLAY=:0.0
DOTNET_CLI_TELEMETRY_OPTOUT=1
EDITOR=nano
GDMSESSION=lightdm-xsession
GTK_MODULES=gail:atk-bridge
HOME=/home/ShadoVaine
312

3KEYTIMEOUT=1
LANG=en_US.UTF-8
LESS=-R
LOGNAME=ShadoVaine
NMAP_PRIVILEGED=
OLDPWD=/home/ShadoVaine/testfolder/labs
PAGER=less
PANEL_GDK_CORE_DEVICE_EVENTS=0
PATH=/home/ShadoVaine/bin:/home/ShadoVaine/.local/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:/snap/bin:/home/ShadoVaine/.dotnet/tools
POWERSHELL_TELEMETRY_OPTOUT=1
POWERSHELL_UPDATECHECK=Off
PWD=/home/ShadoVaine/testfolder/labs/linux+/EnvComLab05
QT_ACCESSIBILITY=1
QT_AUTO_SCREEN_SCALE_FACTOR=0
QT_QPA_PLATFORMTHEME=qt5ct
SESSION_MANAGER=local/Shadolab:@/tmp/.ICE-unix/1854,unix/Shadolab:/tmp/.ICE-unix/1854
SHELL=/usr/bin/zsh
SHLVL=2
SSH_AGENT_PID=1958
SSH_AUTH_SOCK=/home/ShadoVaine/.ssh/agent/s.up7FLLzfBT.agent.gDWSFw6tuv
TERM=xterm-256color
USER=ShadoVaine
_=/usr/bin/env
VTE_VERSION=8202
WINDOWID=60817411
outputs/terminal.env

## Cron.env

COMMAND_NOT_FOUND_INSTALL_PROMPT=1
DOTNET_CLI_TELEMETRY_OPTOUT=1
HOME=/home/ShadoVaine
LANG=en_US.UTF-8
LOGNAME=ShadoVaine
PATH=/usr/bin:/bin
POWERSHELL_TELEMETRY_OPTOUT=1
POWERSHELL_UPDATECHECK=Off
PWD=/home/ShadoVaine
SHELL=/bin/sh
SHLVL=1
_=/usr/bin/env
outputs/cron.env (END

## systemd.env

INVOCATION_ID=71063abc2f97417bb91f8edc64559bab
JOURNAL_STREAM=9:75218
LANG=en_US.UTF-8
MEMORY_PRESSURE_WATCH=/sys/fs/cgroup/system.slice/env-dump.service/memory.pressure
MEMORY_PRESSURE_WRITE=c29tZSAyMDAwMDAgMjAwMDAwMAA=
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/snap/bin
PWD=/
SHLVL=1
SYSTEMD_EXEC_PID=36497
USER=root
_=/usr/bin/env

## Environment Comparison Results for terminal.env vs cron.env

COLORTERM=truecolor					      <
COMMAND_NOT_FOUND_INSTALL_PROMPT=1				COMMAND_NOT_FOUND_INSTALL_PROMPT=1
DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1001/bus	      <
DESKTOP_SESSION=lightdm-xsession			      <
DISPLAY=:0.0						      <
DOTNET_CLI_TELEMETRY_OPTOUT=1					DOTNET_CLI_TELEMETRY_OPTOUT=1
EDITOR=nano						      <
GDMSESSION=lightdm-xsession				      <
GTK_MODULES=gail:atk-bridge				      <
HOME=/home/ShadoVaine						HOME=/home/ShadoVaine
KEYTIMEOUT=1						      <
LANG=en_US.UTF-8						LANG=en_US.UTF-8
LESS=-R							      <
LOGNAME=ShadoVaine						LOGNAME=ShadoVaine
NMAP_PRIVILEGED=					      |	PATH=/usr/bin:/bin
OLDPWD=/home/ShadoVaine/testfolder/labs			      <
PAGER=less						      <
PANEL_GDK_CORE_DEVICE_EVENTS=0				      <
PATH=/home/ShadoVaine/bin:/home/ShadoVaine/.local/bin:/usr/lo <
POWERSHELL_TELEMETRY_OPTOUT=1					POWERSHELL_TELEMETRY_OPTOUT=1
POWERSHELL_UPDATECHECK=Off					POWERSHELL_UPDATECHECK=Off
PWD=/home/ShadoVaine/testfolder/labs/linux+/EnvComLab05	      |	PWD=/home/ShadoVaine
QT_ACCESSIBILITY=1					      |	SHELL=/bin/sh
QT_AUTO_SCREEN_SCALE_FACTOR=0				      |	SHLVL=1
QT_QPA_PLATFORMTHEME=qt5ct				      <
SESSION_MANAGER=local/Shadolab:@/tmp/.ICE-unix/1854,unix/Shad <
SHELL=/usr/bin/zsh					      <
SHLVL=2							      <
SSH_AGENT_PID=1958					      <
SSH_AUTH_SOCK=/home/ShadoVaine/.ssh/agent/s.up7FLLzfBT.agent. <
TERM=xterm-256color					      <
USER=ShadoVaine						      <
_=/usr/bin/env							_=/usr/bin/env
VTE_VERSION=8202					      <
WINDOWID=60817411					      <
XAUTHORITY=/home/ShadoVaine/.Xauthority			      <
XDG_CACHE_HOME=/home/ShadoVaine/.cache			      <
XDG_CONFIG_DIRS=/etc/xdg				      <
XDG_CONFIG_HOME=/home/ShadoVaine/.config		      <
XDG_CURRENT_DESKTOP=XFCE				      <
XDG_DATA_DIRS=/usr/share/xfce4:/usr/local/share:/usr/share:/v <
XDG_GREETER_DATA_DIR=/var/lib/lightdm/data/ShadoVaine	      <
XDG_MENU_PREFIX=xfce-					      <
XDG_RUNTIME_DIR=/run/user/1001				      <
XDG_SEAT_PATH=/org/freedesktop/DisplayManager/Seat0	      <
XDG_SEAT=seat0						      <
XDG_SESSION_CLASS=user					      <
XDG_SESSION_DESKTOP=lightdm-xsession			      <
XDG_SESSION_ID=2					      <
XDG_SESSION_PATH=/org/freedesktop/DisplayManager/Session0     <
XDG_SESSION_TYPE=x11					      <
XDG_VTNR=7						      <


## Environment Comparison Results for cron.env vs systemd.env
 

COMMAND_NOT_FOUND_INSTALL_PROMPT=1			      |	INVOCATION_ID=71063abc2f97417bb91f8edc64559bab
DOTNET_CLI_TELEMETRY_OPTOUT=1				      |	JOURNAL_STREAM=9:75218
HOME=/home/ShadoVaine					      <
LANG=en_US.UTF-8						LANG=en_US.UTF-8
LOGNAME=ShadoVaine					      |	MEMORY_PRESSURE_WATCH=/sys/fs/cgroup/system.slice/env-dump.se
PATH=/usr/bin:/bin					      |	MEMORY_PRESSURE_WRITE=c29tZSAyMDAwMDAgMjAwMDAwMAA=
POWERSHELL_TELEMETRY_OPTOUT=1				      |	PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/snap/
POWERSHELL_UPDATECHECK=Off				      |	PWD=/
PWD=/home/ShadoVaine					      <
SHELL=/bin/sh						      <
SHLVL=1								SHLVL=1
							      >	SYSTEMD_EXEC_PID=36497
							      >	USER=root
_=/usr/bin/env							_=/usr/bin/env
