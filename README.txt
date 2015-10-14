REST API ��� �������� �������(Ruby on Rails)
���� - PostgreSQL 9.4
____________________________________________

�����������: 
����� API ��������� ������ � ������� (��������, ��������, ����),
�������� ������ � ������,
�������� ������ ���� ������� (���������� � ����������),
������� �����.
____________________________________________

���������� ������ dump catalog.sql
1. ������� �� catalog_development 
   >createdb -U User_name catalog_development
   >psql -U User_name catalog_development < catalog.sql

>chcp 65001 - UTF-8 � cmd.exe ��� ����������� ����������� �� Windows

��������� ������ �������� - ������� � 
\catalog\bin\
�����:
\catalog\bin> bundle install
\catalog\bin> rails s


��������� ����������������� ����� � ���������� �� ������ http://localhost:3000/articles

���� � ������� http://curl.haxx.se/dlwiz/?type=bin
C:\curl\bin>

GET(��� � ���������� /articles?page=�����_��������)
	curl -H "Content-Type: application/json" -X GET http://localhost:3000/articles?page=1

GET(/articles/����������_�����)
	curl -H "Content-Type: application/json" -X GET http://localhost:3000/articles/38

POST (����� /articles)
	curl -H "Content-Type: application/json" -X POST -d "{\"article\" : { \"name\" : \"book\", \"description\" : \"get\", \"price\" : \"155\"}}" http://localhost:3000/articles

PUT (/articles/����������_�����)
	curl -H "Content-Type: application/json" -X PUT -d "{\"article\" : {\"name\" : \"book\", \"price\" : \"120\"}}" http://localhost:3000/articles/42

DELETE(/articles/����������_�����)
	curl -H "Content-Type: application/json" -X DELETE http://localhost:3000/articles/42