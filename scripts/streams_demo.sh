#!/usr/bin/env bash
set -u

read -rp "Введите путь к файлу: " FILE

if [[ -f "$FILE" ]]; then
  echo "[STDOUT] Файл найден: $FILE"
  wc -l "$FILE"
  exit 0
else
  echo "[STDERR] Ошибка: файл не найден: $FILE" >&2
  exit 1
fi
