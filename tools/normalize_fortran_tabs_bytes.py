#!/usr/bin/env python3
"""Normalize whitespace tabs in legacy .f08 free-form code without transcoding bytes."""
from pathlib import Path
import argparse

ROOT = Path("fortran/Basic.Fortran.Tutorial")

def normalize(source):
    output = bytearray()
    for line in source.splitlines(keepends=True):
        quote = None
        i = 0
        while i < len(line):
            c = line[i]
            if quote is None:
                if c in (34, 39):
                    quote = c
                    output.append(c)
                elif c == 9:
                    output.extend(b"    ")
                else:
                    output.append(c)
            else:
                output.append(c)
                if c == quote:
                    if i+1 < len(line) and line[i+1] == quote:
                        output.append(quote)
                        i += 1
                    else:
                        quote = None
            i += 1
    return bytes(output)

def main():
    p = argparse.ArgumentParser()
    p.add_argument("--apply", action="store_true")
    args = p.parse_args()
    count = 0
    for file in sorted(ROOT.glob("*.f08")):
        original = file.read_bytes()
        updated = normalize(original)
        if updated != original:
            count += 1
            if args.apply:
                file.write_bytes(updated)
    if not (20 <= count <= 30):
        raise SystemExit(f"Unexpected count={count}; no further action")
    print(f"Whitespace normalized in {count} free-form files; apply={args.apply}")

if __name__ == "__main__":
    main()
