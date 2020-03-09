from django.db import models

class MysqlView(models.Model):
    id = models.IntegerField('序号',primary_key=True)
    accountname = models.CharField('科目名',max_length=64)
    amount = models.IntegerField('金额',max_length=256)
    companyname = models.CharField('公司名',max_length=64)
    accountdate = models.DateField('会计日期')
    versionname = models.CharField('版本号',max_length=64)
    vaild = models.BooleanField('有效标记')
    typename = models.CharField('科目类别',max_length=30)
