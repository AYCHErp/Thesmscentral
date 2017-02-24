@echo off
bundler\SqlBundler.exe ..\..\..\..\ "db/SQL Server/2.x/2.0" false
copy tsc.sql tsc-blank.sql
del tsc.sql
copy tsc-blank.sql ..\..\tsc-blank.sql