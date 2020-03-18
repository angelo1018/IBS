#coding=UTF-8
from django.test import TestCase

# # 运行django的数据库操作必须的环境
# import os,django
# os.environ.setdefault ( "DJANGO_SETTINGS_MODULE" , "IBS.settings" )
# django.setup()
#
#
# from collector import models,models_view
#
# for obj in models_view.MysqlView.objects.all().values_list():
#
#     print(obj)

# Create your tests here.
#
# import django,multiprocessing
# print(django.__path__)
# print(multiprocessing.__path__)
# a = input('Hello:')
# print(a)
# /Users/angelo/ONEDRIVE/OneDrive/IBS/python/lib/python3.8/site-packages



# 装饰器


# 先写一个计算某个任务函数执行时间的装饰器
import time
def displayTime(func):
    def wrapper(*args):
        t1 = time.time()
        resulte = func(*args)
        t2 = time.time()
        print(t2-t1)
        print(resulte)
        # return resulte
    return wrapper



# 方法一：判断是不是质数
def is_prime(num):
    if num < 2:
        return False
    elif num == 2:
        return True
    else:
        for i in range(2,num):
            if num % i == 0:
                return False
        return True
@displayTime
def countPrime1(maxnum):
    Num = 0
    for i in range(0, maxnum):
        if is_prime(i):
            # print(i)
            Num+=1
    return Num

#方法二：直接打印质数和统计质数个数
@displayTime
def countPrime2(num):
    listPrime = [True]*(num+1)
    listPrime[0] = False
    listPrime[1] = False
    result = []
    for i in range(2,num+1):
        if listPrime[i]:
            # print(i)
            result.append(i)
            for j in range(2*i,num+1,i):
                listPrime[j] = False
    return len(result)

countPrime1(10000)
countPrime2(10000)

'''结果大相径庭
1229
0.6299211978912354
1229
0.0034220218658447266
这就是遍历和迭代的差异'''



# 通过装饰器看看方法一求质数电脑所需时间
# a = countPrime(10000)
# print(a)

