### Запуск
```bash
# Клонировать репозиторий
git clone <repository-url>
cd project

# Запустить все сервисы
docker-compose up -d

# Креды
Airflow: http://localhost:8080 (admin/admin)
ClickHouse: http://localhost:8123 (admin/password)
Spark Master: http://localhost:8085
Jupyter: http://localhost:8889 (token: admin)
RabbitMQ: http://localhost:15672 (admin/admin)