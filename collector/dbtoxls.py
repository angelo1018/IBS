# Pyhton 下用Django语法增删查改，注意创建空的数据库需要在终端或数据库软件中，表结构需要在models.py模块
import os, django,pymysql, inspect,sys, datetime,time
os.environ.setdefault ( "DJANGO_SETTINGS_MODULE" , "IBS.settings" )  # project_name 项目名称
django.setup()

from openpyxl import load_workbook , Workbook
from openpyxl.styles import PatternFill, Border, Side, Alignment, Protection, Font,colors

from collector import models,models_view


# 思路历程：
# print(models)
# print(dir(models))
# print(models.__name__)
# print(models.Account.__str__)
# print(dir(models.Account))
# print(models.Account.__dict__)
# print(models.Account.__name__)
# #取出表的中文名
# print(models.Account._meta.verbose_name_plural)

# #取出字段的中文名
# fielddic1={}
# for field1 in models.Account._meta.fields:
#     fielddic1[field1.name] = field1.verbose_name
# print(fielddic1)
#
# for name, obj in inspect.getmembers(sys.modules[__name__]):
#     if inspect.isclass(obj):
#         print(obj)
#         print(name)

# # 获取类中所有方法列表：
# method_list1 = [func for func in dir(Protection) if callable(getattr(Protection, func))]
# print(len(method_list1))
# # 排除内置方法列表：
# method_list2 = [func for func in dir(Protection) if callable(getattr(Protection, func)) and not func.startswith("__")]
# print(method_list2)

# i = 0
# for method in inspect.getmembers(Protection):
#     print(method)
#     i = i+1
#     print(i)

# 一句循环写完所有表
wb = Workbook()
for name, obj in inspect.getmembers(models):
    if inspect.isclass(obj):
        ws = wb.create_sheet('%s'%(name))
         #不加密保护
        # ws.protection.sheet = True
        # ws.protection.enable ()
        # ws.protection.disable ()
        # 加密码保护
        # ws.protection.password = 'sheet123'
        # ws.protection.set_password('sheet123')
        fielddic = {}
        for field in obj._meta.fields:
            fielddic[field.name] = field.verbose_name
        # print(fielddic)
        fields1 = list(fielddic)
        fields2 = list(fielddic.values())
        # print(fields1)
        ws.append(fields1)
        ws.append(fields2)
        ws.row_dimensions.group(1,1, hidden=True)
        # ws.sheet_state = 'hidden'
        ws.protection.enable()
for name,obj in inspect.getmembers(models_view):
    if inspect.isclass(obj):
        ws = wb.create_sheet(('%s'%(name)))
        fielddic = {}
        for field in obj._meta.fields:
            fielddic[field.name] = field.verbose_name
        # print(fielddic)
        fields1 = list(fielddic)
        fields2 = list(fielddic.values())
        # print(fields1)
        ws.append(fields1)
        ws.append(fields2)
        ws.row_dimensions.group(1,1, hidden=True)
        ws.sheet_state = 'hidden'
        ws.protection.enable()
 # 导出科目表
for obj in models.Account.objects.all().values_list():
    ws = wb['Account']
    print(obj)
    ws.append(obj) #在当前表最后一行追加
# 导出科目类型表
for obj in models.AccountType.objects.all().values_list():
    ws = wb['AccountType']
    print(obj)
    ws.append(obj)
# 导出公司表
    for obj in models.Company.objects.all().values_list():
        ws = wb['Company']
        print(obj)
        ws.append(obj)
# 导出版本表
    for obj in models.Version.objects.all().values_list():
        ws = wb['Version']
        print(obj)
        ws.append(obj)

# 导出币种表
    for obj in models.Currency.objects.all().values_list():
        ws =wb['Currency']
        print(obj)
        ws.append(obj)

# 导出汇率表
    for obj in models.CurrencyRate.objects.all().values_list():
        ws = wb['CurrencyRate']
        print(obj)
        ws.append(obj)

ws = wb.active
ws.title = 'Cover'
ws['A4'] = '填报单位：'
ws['A4'].font = Font(name='Arial', size=14, color=colors.RED, italic=True)
ws['A5'] = '填报期间:'
ws['A7'] = '版本号'
ws.sheet_state = 'hidden'
ws.protection.enable()
wb.save('FrpTemplateV1.0.xlsx')





