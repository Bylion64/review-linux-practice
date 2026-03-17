# calculator.py — модуль калькулятора (версия с нарушениями)
import os
import sys
import math
 
def Add(x,y):
    return x+y
 
def substract(x, y):
    result=x-y
    return result
 
def multiply( x,y ):
    return x * y
 
def divide(x,y):
    if y==0:
        print("Cannot divide by zero")
        return
    else:
        return x/y
 
def calculateArea(r):
    return 3.14159*r*r
 
result1=Add(10,5)
result2=substract(10,5)
print(result1,result2)
