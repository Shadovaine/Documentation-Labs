# Lab05 - Environment Comparison Commands Executed

## Command Log

```bash

## Directory Setup

mkdir -p EnvComLab05/outputs

cd EnvComLab05

```bash

## Script Creation

nano env_dump.sh

chmod +x env_dump.sh

```bash

## Terminal Execution (Interactive)

```bash

./env_dump.sh terminal

ls outputs/

less outputs/terminal.env

```bash

## Cron Execution (Non-Interactive, Non-Login)

```bash

crontab -e

* * * * * /full/path/to/env-compare-lab/env_dump.sh cron

sleep 60

ls outputs/

less outputs/cron.env

crontab -r

```bash

## systemd Execution (Service)

```bash

sudo nvim /etc/systemd/system/env-dump.service

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

```bash

## Environment Comparison

```bash

diff outputs/terminal.env outputs/cron.env

diff outputs/cron.env outputs/systemd.env

```bash

