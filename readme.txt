XEAD Driverは、以下のデータベースで動作させることが出来ます。
Apache Derby
PostgreSQL
MySQL

アプリケーションの雛形となるSkeleton.xeafは、標準のApache Derbyで動作します。

PostgreSQL、MySQLで動作させるには、それぞれの環境でのデータベースを作成し、
Skeleton.xeafのデータベース設定の接続情報を修正する必要があります。

簡単に動作確認ができるように、修正済みのSkeleton.xeafと、
PostgreSQL、MySQL用のDDL文を用意しました。

作成時の、XEAD Driverのバージョンは
XeadDriverInstaller121017です。

PostgrESQL用には、
pgsqlSkeleton.xeaf と　pgsql_skeleton.sql

MySQL用には、
mysqlSkeleton.xeaf と　mysql_skeleton.sql

データベースへの接続id、パスワードはご自身の環境に合わせて
各Skeleton.xeafのデータベース設定で変更してください。