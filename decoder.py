# -*- coding: utf-8 -*-
"""
Created on Wed Sep 25 11:23:44 2019

@author: DELL
"""
from code_tabel import keyList
import numpy as np
from PIL import Image
def decode(address,key):
    c = 0
    im=Image.open(address)
    na=np.array(im).flatten()
    print(len(na))
    textList=[]
    for x in na:
       try: 
           textList.append(chr(keyList[key%100].index(x)))
           
       except:
           textList.append('')
           print("Error")
           c += 1
    return [textList,c]
address="result.png"
key=12
a,b=decode(address,key)
with open('your_file.txt', 'w') as f:    
    for item in a:
        f.write(item)
print(b)
