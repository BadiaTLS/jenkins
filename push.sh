#!/bin/bash

# Pastikan ada argumen yang diberikan untuk commit message
if [ -z "$1" ]; then
  echo "Error: Commit message is required."
  exit 1
fi

# Menambahkan perubahan
git add .

# Menampilkan status git
git status

# Melakukan commit dengan pesan yang diterima dari argumen
git commit -m "$1"

# Mendorong perubahan ke repositori
git push origin master

