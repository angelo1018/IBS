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
import django,multiprocessing
print(django.__path__)
print(multiprocessing.__path__)
a = input('Hello:')
print(a)
# /Users/angelo/ONEDRIVE/OneDrive/IBS/python/lib/python3.8/site-packages

