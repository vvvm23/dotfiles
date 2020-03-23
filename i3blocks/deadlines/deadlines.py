#!/usr/bin/python3
import time
import datetime
import sys

def load_deadlines(path):
    f = open(path)
    lines = [x[:-1] for x in f.readlines()]
    deadlines = [x.split(',') for x in lines]
    deadlines = [[d[0], int(d[1]), int(d[2]), int(d[3])] for d in deadlines]
    return deadlines

def main(interval):
    deadlines = load_deadlines('/home/alex/.local/deadlines')
    while True:
        for d in deadlines:
            d_date = datetime.date(d[3], d[2], d[1])
            days_until = (d_date - datetime.datetime.today().date()).days
            print(f"\uf973 {d[0]}: {d[1]}/{d[2]}/{d[3]} ({days_until} days left)", flush=True)
            time.sleep(interval)

if __name__ == '__main__':
    main(int(sys.argv[1]))
