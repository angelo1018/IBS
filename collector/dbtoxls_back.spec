# -*- mode: python ; coding: utf-8 -*-

block_cipher = None


a = Analysis(['dbtoxls.py'],
             pathex=['/Users/angelo/ONEDRIVE/OneDrive/IBS/collector','/Users/angelo/ONEDRIVE/OneDrive/IBS/python/lib/python3.8/site-packages'],
             binaries=[],
             datas=[],
             hiddenimports=['IBS','IBS.settings','collector.apps','_frozen_importlib_external','winreg','_winapi',
             'multiprocessing.get_context','multiprocessing.BufferTooShort','multiprocessing.AuthenticationError',
             '_overlapped',"'pkg_resources.extern.pyparsing'",'pkg_resources.extern.packaging','pkg_resources.extern.appdirs',
             "'pkg_resources.extern.six.moves'",'pkg_resources.extern.six',"'MySQLdb.converters'","'MySQLdb.constants'",
             "'psycopg2.extras'","'psycopg2'",'jinja2','django.db.models.DurationField','django.db.models.DecimalField',
             'pyimod03_importers','multiprocessing.AuthenticationError','multiprocessing.BufferTooShort',
             'multiprocessing.get_context','multiprocessing.get_start_method','multiprocessing.set_start_method',
             'msvcrt','django.db.models','tkinter'],
             hookspath=[],
             runtime_hooks=[],
             excludes=[],
             win_no_prefer_redirects=False,
             win_private_assemblies=False,
             cipher=block_cipher,
             noarchive=False)
pyz = PYZ(a.pure, a.zipped_data,
             cipher=block_cipher)
exe = EXE(pyz,
          a.scripts,
          [],
          exclude_binaries=True,
          name='dbtoxls',
          debug=False,
          bootloader_ignore_signals=False,
          strip=False,
          upx=True,
          console=True )
coll = COLLECT(exe,
               a.binaries,
               a.zipfiles,
               a.datas,
               strip=False,
               upx=True,
               upx_exclude=[],
               name='dbtoxls')
