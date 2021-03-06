# Generated by Django 3.0.3 on 2020-03-17 09:16

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('collector', '0004_account_displayname'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='businessunit',
            options={'verbose_name_plural': '板块维护'},
        ),
        migrations.AlterField(
            model_name='businessunit',
            name='buname',
            field=models.CharField(max_length=64, unique=True, verbose_name='板块'),
        ),
        migrations.CreateModel(
            name='YtdData',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('ytdactual', models.FloatField(verbose_name='实际累计')),
                ('ytdbudget', models.FloatField(verbose_name='预算累计')),
                ('version', models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='collector.Version')),
            ],
        ),
    ]
