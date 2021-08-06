#!/usr/bin/env python3

import sys
import os

scores = {}

def add(input):
    if input[0] not in scores:
        scores[input[0]] = [int(input[2])]
    else:
        scores[input[0]].append(int(input[2]))
    
def summary(input):
    print(f'{" ".join(input)}')
    scoresInList = [[j,sum(scores[j])] for j in [i for i in scores]]
    scoresInList.sort(key=lambda x: x[0].split('-')[1])
    [print(f'  {i[0]}: {i[1]}') for i in scoresInList]
    
    
def csv(input):
    with open(input[0], 'w') as f:
        f.write('team,score\n')
        scoresInList = [[j,sum(scores[j])] for j in [i for i in scores]]
        scoresInList.sort(key=lambda x: x[0].split('-')[1])
        for i in scoresInList:
            f.write(f'{i[0]},{i[1]}\n')



def podium():
    print('Medal podium')
    scoresInList = [[j,sum(scores[j])] for j in [i for i in scores]]
    scoresInList.sort(key=lambda x: sum(x[1:]),reverse=True)
    for i in range(3):
        print(f'  {scoresInList[i][0]}')


def run_with_file(input_file):
    while (x:=input_file.readline()):
        command = x.split()[0]
        if len(x.split()) > 1:
            argument = x.split()[1:]
        if command == 'add':
            add(argument)
        elif command == 'summary':
            summary(argument)
        elif command == 'csv':
            csv(argument)
        elif command == 'podium':
            podium()
        else: pass 
        
    
def main():
    with open(sys.argv[1]) as inp:
        run_with_file(inp)

if __name__ == '__main__':
    main()
