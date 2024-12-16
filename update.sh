#!/bin/sh

git fetch --all
git pull
git log

echo "Continue? "
read smth

docker compose down && docker compose up --build -d

echo "\n\nFor logs consider running:"
echo "docker logs -f teal-gpt-bot-container"
