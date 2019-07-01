import time
import datetime
import _thread

def calc_square(numbers):
    print("calculate square numbers")
    for n in numbers:
        time.sleep(0.2)
        print('square:',n*n)

def calc_cube(numbers):
    print("calculate cube of numbers")
    for n in numbers:
        time.sleep(0.2)
        print('cube:',n*n*n)

arr = [2,3,8,9]
Arr2 = [5,48,76,88]

t = time.time()
Now = datetime.datetime.now()
calc_square(arr)
calc_cube(arr)
