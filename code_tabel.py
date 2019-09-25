# -*- coding: utf-8 -*-
"""
Created on Wed Sep 25 12:01:26 2019

@author: DELL
"""
import random
random.seed(0)
keyList=[]
for k in range(100):
    a=[]
    while len(a)<128:
        x = random.randint(0,256)
        if x not in a:
            a.append(x)
    keyList.append(a)
if __name__ == "__main__":
    print(keyList)