# Lab08 Process Automation Notes

## --- When to Create a Notes.md for a Lab ---
- When you have a "ohh, that's why"
- If a mistake is made worth not repeating
- If a command behaves differently than expected
- When a why is learned, not just the how
- When an exam trap is realized

## Key Takeaways (1-3 bullet points summarizing what this lab taught you)

## Why Hashing matters

- Hashes allow detection of file modification without storing file contents.
- SHA256 provides strong collision resistance and is widely supported

## Phase 1 - Baseline Creation

The baseline process walks the target directory recursively and hashes file
contents using SHA256.
Files are read in chunks to avoid memory exhaustion.
Hashing failures do not terminate execution, ensuring resilience.
The baseline is store in JSON format for readability and auditability. 

## Phase 2 - Integrity Check

The integrity check compares a fresh directory scan against a stored baseline.
Differences are categorized as added, removed, or modified files.
SHA256 has comparison ensures detection of even minimal file changes.
This phase provides visibility only and does not attempt remediation.

---
 
## What Tripped me up (Anything that slowed you down or caused confusion)


---

## Important Behaviors / Gotchas (Non-obvious command behavior, defaults, or edge cases)

## Limitations Observed

- No protection against baseline tampering
- No real time alerts
- No permission changes detection

## Insight

- Integrity monitoring detects change, not intent.
- Further investigation is required to determine whether changes are authorized.


---


## Safety / Exam Warnings (Things that can break a system or cost points if done wrong)

## Security Implications

File Integrity monitoring is essential for detecting:
- Malware persistence
- Insider Threats
- Accidental modifications

---



