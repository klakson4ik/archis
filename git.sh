#!/bin/bash
mail=makszona@mail.ru
name="Maks"
$githubLogin=klakson4ik
$nameProject=shop.local

#Параметры установки окончаний строк
#Также, для пользователей Unix:
  git config --global core.autocrlf input
  git config --global core.safecrlf warn
  
# Установка отображения unicode
# По умолчанию, git будет печатать не-ASCII символов в именах файлов в виде восьмеричных последовательностей \nnn. Что бы избежать нечитаемых строк, установите соответствующий флаг.
  git config --global core.quotepath off
  
  git config --global user.name $name
  $ git config --global user.email $mail 
  git config --global core.editor vim
  git remote add origin https://github.com/$githubLogin/$nameProject
