# Lab08 - Process Automation Commands Executed

## Command Log

## Initial Setup

```bash

python3 --version

mkdir -p /srv/projects/alpha

```bash

## Baseline Creation

```bash

python3 poor_mans_aide.py --baseline /srv/projects/alpha

```bash

## Simulated Changes

```bash

echo "test" >> /srv/projects/alpha/file1.txt
rm /srv/projects/alpha/file2.txt
touch /srv/projects/alpha/newfile.txt

```bash

## Integrity Check

```bash

python3  poor_mans_aide.py --check /srv/projects/alpha

```bash

