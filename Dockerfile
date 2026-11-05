# Берем официальный образ Python
FROM python:3.11-slim

# Создаем рабочую директорию внутри контейнера
WORKDIR /app

# Копируем файл с зависимостями и устанавливаем их
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Копируем весь остальной код
COPY . .

# Команда, которая запускается при старте контейнера
CMD ["python", "app/main.py"]
