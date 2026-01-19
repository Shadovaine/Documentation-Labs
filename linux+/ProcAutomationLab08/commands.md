# Commands Executed

## Lab 08: 

## Documentation Instructions
- Not every section is going to be filled out for every lab
- Remove the sections not needed for a lab
- Order stays the same
- Headings stay the same also

## Mental Guideline (go through this checklist in your head for each lab)
- What's the state?
- What do I need to prepare?
- Execute
- Verify
- Check exit codes
- Fix if needed
-Verify again

## Initial Setup

python3 --version

mkdir -p /srv/projects/alpha

## Baseline Creation

python3 poor_mans_aide.py --baseline /srv/projects/alpha

## Simulated Changes

echo "test" >> /srv/projects/alpha/file1.txt
rm /srv/projects/alpha/file2.txt
touch /srv/projects/alpha/newfile.txt

## Integrity Check
python3  poor_mans_aide.py --check /srv/projects/alpha
