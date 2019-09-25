# -*- coding: utf-8 -*-
"""
Created on Wed Sep 25 11:23:44 2019

@author: DELL
"""
from code_tabel import keyList
import numpy as np
from PIL import Image
class decoder(object):
    def __init__(self):
        pass
        
    def decode(self,address,key,path):#path interm D:\whatever\
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
        try:
            with open(path+'your_file.txt', 'w') as f:    
                for item in textList:
                    f.write(item)
        except:
             with open('your_file.txt', 'w') as f:    
                for item in textList:
                    f.write(item)
address="result.png"
key=12
whatever=decoder()
whatever.decode(address,key,"D:/")
