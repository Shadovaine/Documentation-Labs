#!/usr/bin/env python3                                       # Tells the system to use Python3 to run this script

#=============
# Imports
#=============
import os                                                    # Walk directories, handles path
import hashlib                                               # Cryptographic hashing
import json                                                  # Stores baseline in structured format
import argparse                                              # Handles CLI arguments cleanly

#==============
# File Name
#==============
BASELINE_FILE= "aide_baseline.json"                          # Baseline file name

#=================
# Hashing Function
#=================
def hash_file(path:                                          # File hashing function; take a file path and returns a SHA256 hash
    h = hashlib.sha256()                                     # Creates a SHA256 hash object
    try:                                                     # try statement helps prevent script from crashing
        with open(path, "rb") as f:                          # State binary mode is needed to hash files in
            for chunk in iter(lambda: f.read(8192), b""):    # Chunking prevents large files being loaded, reads files in 8KB segments
                h.update(chunk)                              # Each chunk segment is loaed int hash
        return h.hexdigest()                                 # Converts binary hash into readable hex string
    except Exception as e:                                   # Script continues if a fail occurs
        return None

#==================
# Baseline Builder
#==================
def build_baseline(target_dir):
    baseline = {}
    for root, _, files in os.walk(target_dir):               # current dir path, subdirectories(ignored), files in that directory
        for name in files:                                   # for loop to go through files in directory
            full_path = os.path.join(root, name)             # handles nested directories correctly
            file_hash = hash_file(full_path)                 # Calls the hashing function
            if file_hash:
                baseline[full_path] = file_hash              # failed files are ignored so script never fails
    return baseline                                          # returns entire snapshot to directory

#=====================
# Saving the baseline
#=====================
def save_baseline(data):                                     # Function for saving the baseline
    with open(BASELINE_FILE, "w") as f:                      # writes baseline to disk
        json.dump(data, f, indent=2)

#=====================
# Loading the Baseline
#=====================
def load_baseline():
    with open(BASELINE_FILE, "r") as f:
         return json.load(f)

#=====================
# Comparing baseline
#=====================
def compare(current, baseline):
    added = current.keys() - baseline.keys()
    removed = baseline.keys() - current.keys()
    modified = {
        f for f in current.keys() & baseline.keys()
        if current [f] != baseline[f]
    }
    return added, removed, modified

#=====================
# Argument Parsing
#=====================
def main():
    parser = argparse.ArgumentParser(description="Poor Man's AIDE")          # Creates a nice CLI interface
    parser.add_argument("--baseline", help="Create baseline", metavar="DIR") # Captures the specific directory
    parser.add_argument("--check", help="check integrity", metavar="DIR")
    args = parser.parse_args()                                               # parses the CLI input

    if args.baseline                                                         # Logic Function
        data = build_baseline(args.baseline)                                 # Walks directory, Hash files, and builds dictionary
        save_baseline(data)                                                  # Commits data to disk
        print(f"[+] Baseline created with {len(data)} files")                # Output to user

    elif args.check:
        baseline = load_baseline()
        current = build_baseline(args.check)
        added, removed, modified = compare(current, baseline)

        print("[+] Integrity Check Results")
        print(f"  Added: {len(added)}")
        print(f"  Removed: {len(removed)}")
        print(f"  Modified: {len(modified)}")

        for f in modified:
            print(f"  MODIFIED: {f}")

    else:
        parser.print_help()

__name__ == "__main__":                                                      # Program entry point
 main()

        
