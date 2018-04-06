from itertools import *
import os.path
import numpy as np
root = '/Users/cheduo/aoc_data'
# Q1
l = open(os.path.join(root, 'd1.txt')).read().strip()
sum(int(l[i]) for i in range(len(l)) if l[i-1]==l[i]) #part1

first, second = np.array(list(l),int).reshape((2,-1))
2*sum(compress(first, first==second)) # part2
# Q2
l = open(os.path.join(root, 'd2.txt')).read().strip()
sum(max(i)-min(i) for i in map(lambda x: np.array(x.split('\t'),int),l.split('\n'))) #part1

ret, m = 0, np.array(list(map(str.split,l.split('\n'))),int)
for i in range(1,len(m[0])):
    ratio = m/np.roll(m,i,axis=1)
    ret  += ratio[np.vectorize(float.is_integer)(ratio)].sum()
ret #part2
