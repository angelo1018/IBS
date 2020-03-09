import os, django,datetime,time
from dateutil.relativedelta import relativedelta
os.environ.setdefault ( "DJANGO_SETTINGS_MODULE" , "IBS.settings" )  # project_name 项目名称
django.setup()
from collector import models,models_view
from django.contrib import auth
from django.contrib.auth import authenticate, login
from django.contrib.auth.decorators import login_required
import pymysql
from openpyxl import load_workbook, Workbook
import pymysql
from openpyxl import load_workbook , Workbook
from openpyxl.styles import PatternFill, Border, Side, Alignment, Protection, Font,colors



# 从db中获取所有公司编码和公司名称，验正用户录入正确信息
rowlist = models.Company.objects.all()
comids = []
for rowobj in rowlist :
    print ( rowobj.serializable_value ( 'companyname' ) + ':' + rowobj.serializable_value('companycode'))
    comids.append(rowobj.serializable_value('companycode'))

print(comids)
comid = input('请输入您的公司代码：').strip()
while comid not in comids :
    comid = input('请参照上述列表输入正确的公司代码：')

# 从界面录入正确的年和月# 检查日期格式是否正确
def is_valid_date(strdate):
    try:
        # datetime.datetime.strptime(strdate, "%Y-%m-%d")
        datetime.datetime.strptime(strdate, "%Y-%m")

        return True
    except:
        return False
def dateCheck(strdate):
    while True:
        if is_valid_date(strdate):
            print('请选择要填报的模板')
            break
        else:
            print("输入日期有误，请重新输入")
            break
strdate =input('输入会计期间，格式2019-03：')
dateCheck(strdate)
valid_ym = datetime.datetime.strptime(strdate, "%Y-%m")
dtoday = datetime.datetime.today ()
Last_month = dtoday - relativedelta ( months=1 )
valid_date = dtoday.replace(year=valid_ym.year,month=valid_ym.month) #把输入的会计年月加上日


#############后续可封装成日期不同格式录入的函数检查（1、%Y-%m; 2、%Y-%m-%d 3、%Y-%m-%d %H:%M:%M）


# 从DB中导出数据到EXCEL,封装成一个函数，调用是传入表格路径即可
def xltoxl(localpath):
    try:
        wb = load_workbook(localpath)
        ws = wb['Cover']
        ws['A4'].font = Font ( name='Arial' , size=14 , color=colors.RED , italic=True )
        ws['B4'] = models.Company.objects.get ( companycode=comid ).companyname
        ws['B5'] = valid_date.year
        ws['C5'] = valid_date.month
        vname = 'V' + comid + '-' + str ( valid_date.date()) + '/' + str ( dtoday.month + dtoday.day + dtoday.second )
        ws['B7'] = vname
        print( vname )
        # 版本号写入EXCEL同时写入后台数据库,同时作为后续可否导入数据的检查
        models.Version.objects.create(accountdate=valid_date, actualorbudget=True, versionname=vname,
                                        companycode_id=comid)
        #封装一个函数，在导出数据之前将EXCEL里原有导出数据删除
        # def deledata():

    # if comid == '0001' : #分析用户导出所有数据用，除总部外，其他单位只导出本单位数据
        for obj in models_view.MysqlView.objects.all().values_list():
            ws = wb['MysqlView']
            print(obj)
            ws.append(obj)
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

        wb.save('FRP'+comid+ strdate+'.xlsx')
    except Exception as e :
        print("异常错误",e)
        msg = '导出失败'

import tkinter as tk
application_window = tk.Tk()
# Build a list of tuples for each file type the file dialog should display
my_filetypes = [('all files', '.*'), ('xlsx files', '.xlsx')]
from tkinter import filedialog
localpath = filedialog.askopenfilename(parent = application_window,initialdir = os.getcwd(),title="Please select a file:",filetypes = my_filetypes)
# 只能生成本月或上月报告模板
if valid_ym.month == datetime.datetime.now ().month or valid_ym.month == Last_month.month :
    xltoxl(localpath)
else:
    print("导出失败！只能导出当期及前后一个月的会计报告填报模板，请退出录入正确的会计期间……")


