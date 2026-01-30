# Commands
## Lab 05: Environment Comparison (Terminal vs Cron vs systemd)

---

## Directory Setup

mkdir -p EnvComLab05/outputs

cd EnvComLab05

## Script Creation

nano env_dump.sh

chmod +x env_dump.sh

## Terminal Execution (Interactive)

./env_dump.sh terminal

ls outputs/

less outputs/terminal.env

## Cron Execution (Non-Interactive, Non-Login)

crontab -e

* * * * * /full/path/to/env-compare-lab/env_dump.sh cron

sleep 60

ls outputs/

less outputs/cron.env

crontab -r

## systemd Execution (Service)

sudo nano /etc/systemd/system/env-dump.service


[Unit]
Description=Environment Dump Test

[Service]
Type=oneshot
ExecStart=/full/path/to/EnvComLab05/env_dump.sh systemd

[Install]
WantedBy=multi-user.target

sudo systemctl start env-dump.service

ls outputs/

sudo less outputs/systemd.env

## Environment Comparison

diff outputs/terminal.env outputs/cron.env

diff outputs/cron.env outputs/systemd.env
