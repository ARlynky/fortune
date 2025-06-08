#!/usr/bin/env python3
import random
import sys


def load_fortunes():
    try:
        with open("fortunes.txt", "r") as f:
            return [line.strip() for line in f if line.strip()]
    except FileNotFoundError:
        print("Error: fortunes.txt not found.")
        sys.exit(1)


def main():
    fortunes = load_fortunes()

    if not fortunes:
        print("No fortunes found.")
        return

    print(random.choice(fortunes))


if __name__ == "__main__":
    main()
