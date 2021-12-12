Установка

1. Клонирования репозитория
2. Переменные окружения
```
cp ./docker/.env.dist ./docker/.env
```
3. Запуск 
```
run docker-compose -f ./docker/docker-compose.yml up -d
```
4. Выполнение миграций
```
docker exec -it php-fpm php bin/console doctrine:migration:migrate --no-interaction
```
5. Восстановление данных БД из бекапа
```
cat ./docker/mysql/dump.sql | docker exec -i mysql-server /usr/bin/mysql -u user --password=password crt-symfony-3
```