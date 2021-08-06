#!/usr/bin/env python3

def main():
    with open('input.txt', "r") as f:
        number = int(f.readline())
        for i in range(2,int(number**0.5)+1):
            if number/i == int(number/i): 
                print('false')
                break
        else: print('true')

if __name__ == '__main__':
    main()
