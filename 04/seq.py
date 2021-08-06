#!/usr/bin/env python3

import sys

def print_seq(first, increment, last):
    if not first:
        print(*[i for i in range(1,last+1)])
    elif not increment:
        print(*[i for i in range(first,last+1)])
    else:
        print(*[i for i in range(first,last+1, increment)])

def main():
    if len(sys.argv) not in [2,3,4]:
        print("Wrong argument count.", file=sys.stderr)
        sys.exit(2)
    if len(sys.argv) == 4 and sys.argv[2] == "0":
        print("Step cannot be zero.", file=sys.stderr)
        sys.exit(3)

    for i in sys.argv[1:]:
        if not i.isnumeric() and not i[1:].isnumeric():
            print("Wrong argument (integer expected).", file=sys.stderr)
            sys.exit(1)

    if len(sys.argv) == 2: print_seq(None, None, int(sys.argv[1]))
    elif len(sys.argv) == 3: print_seq(int(sys.argv[1]), None, int(sys.argv[2]))
    elif len(sys.argv) == 4: print_seq(int(sys.argv[1]), int(sys.argv[2]), int(sys.argv[3]))
        
if __name__ == '__main__':
    main()
