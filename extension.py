# -*- coding: utf-8 -*-
"""
Created on Sat Sep 28 23:07:41 2019

@author: DELL
"""
#add this to the head of encoder and decoder file
#the code.txt should be in the same directory with the encoder
keyList=[]
f = open("code.txt","r")
if f.mode == 'r':
    keyList=np.asarray(f.read().split(),dtype=int)
keyList = keyList.reshape(100,128)
#small change in decoder
''' This line: textList.append(chr(keyList[key%100].index(x)))
    Change to: textList.append(chr(keyList[key%100].tolist().index(x)))'''    
