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
    currencyname = models.CharField('币种',max_length=10)
    buname = models.CharField('板块',max_length=30)
    companycode = models.CharField('公司编码',max_length=10)
    submittdate = models.DateTimeField('提报日期')
    ytdactual = models.FloatField('实际累计')
    ytdbudget = models.FloatField('预算累计')

    class Meta :
        verbose_name_plural = '经营分析主要指标表'
        db_table = 'mysqlview'
        managed = False
    def __str__(self):
        return self.companyname,self.versionname