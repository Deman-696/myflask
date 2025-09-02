# Берём официальный образ Python 3
FROM python:3.12-alpine

# Создаём рабочую директорию
WORKDIR /app

# Копируем файлы приложения и зависимости
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY app.py .

# Указываем порт, который контейнер слушает
EXPOSE 5000

# Команда запуска приложения
CMD ["python", "app.py"]
