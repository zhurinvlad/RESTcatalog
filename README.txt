REST API для каталога товаров(Ruby on Rails)
База - PostgreSQL 9.4
____________________________________________

Возможности: 
через API создавать записи о товарах (название, описание, цена),
изменять данные о товаре,
получать список всех товаров (желательно с пагинацией),
удалять товар.
____________________________________________

Необходимо залить dump catalog.sql
1. Создать БД catalog_development 
   >createdb -U User_name catalog_development
   >psql -U User_name catalog_development < catalog.sql

>chcp 65001 - UTF-8 в cmd.exe для корректного отображения на Windows

Запустить сервер локально - перейти в 
\catalog\bin\
Затем:
\catalog\bin> bundle install
\catalog\bin> rails s


Проверить работоспособность можно в интерфейсе по адресу http://localhost:3000/articles

Либо с помощью http://curl.haxx.se/dlwiz/?type=bin
C:\curl\bin>

GET(все с пагинацией /articles?page=номер_страницы)
	curl -H "Content-Type: application/json" -X GET http://localhost:3000/articles?page=1

GET(/articles/конкретный_товар)
	curl -H "Content-Type: application/json" -X GET http://localhost:3000/articles/38

POST (новый /articles)
	curl -H "Content-Type: application/json" -X POST -d "{\"article\" : { \"name\" : \"book\", \"description\" : \"get\", \"price\" : \"155\"}}" http://localhost:3000/articles

PUT (/articles/конкретный_товар)
	curl -H "Content-Type: application/json" -X PUT -d "{\"article\" : {\"name\" : \"book\", \"price\" : \"120\"}}" http://localhost:3000/articles/42

DELETE(/articles/конкретный_товар)
	curl -H "Content-Type: application/json" -X DELETE http://localhost:3000/articles/42