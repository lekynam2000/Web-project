# -*- coding: utf-8 -*-
"""
Created on Tue Sep 24 21:57:38 2019

@author: DELL
"""
from code_tabel import keyList
import numpy as np
import math as m
from PIL import Image
fileName="D:\python\encodescript.txt"
lineList = [x for y in open(fileName) for x in y]
ln=len(lineList)
for i in range(3*(1+ln//3)-ln):
    lineList.append(" ");
key=12
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
#resized = cv2.resize(result, (640, 480), interpolation = cv2.INTER_NEAREST)
result.save("result.png")
'''basewidth = 600
img = Image.open('result.png')
wpercent = (basewidth/float(img.size[0]))
hsize = int((float(img.size[1])*float(wpercent)))
img = img.resize((basewidth,hsize), Image.ANTIALIAS)
img.save('result.png')''' 