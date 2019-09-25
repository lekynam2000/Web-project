# -*- coding: utf-8 -*-
"""
Created on Tue Sep 24 21:57:38 2019

@author: DELL
"""
from code_tabel import keyList
import numpy as np
import math as m
from PIL import Image
class encoder(object):
    def __init__(self,file):
        self.file=file        
    def encode(self,key,path): #path interm of "D:/wh/"
        lineList = [x for y in open(self.file) for x in y]
        ln=len(lineList)
        for i in range(3*(1+ln//3)-ln):
            lineList.append(" ");
        colorList = []
        for x in lineList:
            colorList.append(keyList[key%100][ord(x)])
        print(len(colorList)/3)
        length=int(len(colorList)/3)
        n=int(m.sqrt(length))+1
        for i in range(n**2-length):
            for _ in range(3):
                colorList.append(0)
        na = np.array(colorList).reshape((n,n,3))
        print(len(na))
        result = Image.fromarray(na.astype(np.uint8))
        result.save(path+"result.png","PNG")    
fileName="encodescript.txt"
password = encoder(fileName)
password.encode(12,"D:/python/")
