@echo off
bundler\SqlBundler.exe ..\..\..\..\ "db/PostgreSQL/2.x/2.0" true
copy tsc.sql tsc-sample.sql
del tsc.sql
copy tsc-sample.sql ..\..\tsc-sample.sql