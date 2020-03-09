from django.contrib import admin
from collector import models,models_view


class AccountAdmin(admin.ModelAdmin):
    list_display = ('accountname','accounttypeid','accountid')
    search_fields = ('accountname','accounttypeid','accountid')
    list_filter = ('accounttypeid',)
    list_per_page = 5
    # list_display_links = ['accountname']
    list_editable = ['accounttypeid','accountid']

# 以下注册是为了在admin网站上出现以下表
admin.site.register(models.AccountType)
admin.site.register(models.Account,AccountAdmin)
admin.site.register(models.ActualData)
admin.site.register(models.Company)
admin.site.register(models.User)
admin.site.register(models.Version)
admin.site.register( models.BudgetData)
admin.site.register(models_view.MysqlView)
# Register your models here.
