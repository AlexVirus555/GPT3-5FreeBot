# Используем официальный образ Node.js
FROM node:16-alpine

# Создаем рабочую директорию
WORKDIR /app

# Копируем package.json и package-lock.json (если есть) в рабочую директорию
COPY package*.json ./

# Устанавливаем зависимости
RUN npm ci

# Копируем исходный код приложения в рабочую директорию
COPY . .

# Определяем переменную окружения для токена Telegram Bot API (замените YOUR_TELEGRAM_BOT_TOKEN на свой токен)
ENV TELEGRAM_BOT_TOKEN=YOUR_TELEGRAM_BOT_TOKEN

# Запускаем приложение
CMD [ "npm", "start" ]
