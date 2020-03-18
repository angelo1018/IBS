from django.contrib import admin
from collector import models,models_view

class ActualDataAdmin(admin.ModelAdmin):
    list_display = ('id','version','accountid', 'amount')
    list_editable = ['version','accountid', 'amount']
    list_filter = ('accountid', 'version')
    search_fields = ('version','accountid', 'amount')
    list_per_page = 10

class MysqlViewAdim(admin.ModelAdmin):
    list_display = ('id','versionname', 'companyname', 'accountname', 'typename', 'currencyname', 'amount')
    list_display_links = ['versionname']
    list_filter = ('companyname', 'accountname', 'typename','currencyname')
    search_fields = ('companyname', 'accountname', 'typename','currencyname')
    list_per_page = 10

class AccountBgAdmin(admin.ModelAdmin):
    list_display = ('accountname','accounttypeid','accountid')
    search_fields = ('accountname','accounttypeid','accountid')
    list_filter = ('accounttypeid',)
    list_per_page = 5
    # list_display_links = ['accountname']
    list_editable = ['accounttypeid','accountid']


class CurrenyRateAdmin(admin.ModelAdmin):
    list_display = ('originalcur','aftercur','currencydate','periodrate','pointrate')
    list_editable = ['aftercur','currencydate','periodrate','pointrate']



# 以下注册是为了在admin网站上出现以下表
admin.site.register(models.AccountType)
admin.site.register(models.AccountBg,AccountBgAdmin)
admin.site.register(models.ActualData,ActualDataAdmin)
admin.site.register(models.Company)
admin.site.register(models.User)
admin.site.register(models.Version)
admin.site.register(models.BudgetData)
admin.site.register(models.Currency)
admin.site.register(models.BusinessUnit)
admin.site.register(models.YtdData)
admin.site.register(models.CurrencyRate,CurrenyRateAdmin)
admin.site.register(models_view.MysqlView,MysqlViewAdim)

# Register your models here.
