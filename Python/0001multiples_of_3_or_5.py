#!/usr/bin/env python
# -*- coding: utf-8 -*-

"""
Python 3.13.2
0001multiples_of_3_or_5.py
Copyright 2025 @GitHub JoergEm
This program is WITHOUT ANY WARRANTY; without even the implied
warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
"""


print(sum(nummer for nummer in range(1000) if nummer % 3 == 0 or nummer % 5 == 0))


def main(args):
    return 0


if __name__ == '__main__':
    import sys
    if len(sys.argv) == 2 and sys.argv[1] == '--help':
        print(__doc__)
        sys.exit(main(sys.argv))
