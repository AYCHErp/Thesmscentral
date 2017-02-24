@echo off
bundler\SqlBundler.exe ..\..\..\..\ "db/SQL Server/2.x/2.0" true
copy tsc.sql tsc-sample.sql
del tsc.sql
copy tsc-sample.sql ..\..\tsc-sample.sql