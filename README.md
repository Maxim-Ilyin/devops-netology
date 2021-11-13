#Домашнее задание к занятию «2.1. Системы контроля версий.»

#Исключить все файлы .tfvars, которые могут содержать конфиденциальные данные,
#такие как пароль, секретные ключи и другие секреты.
#*.tfvars

#Игнорировать файлы переопределения, поскольку они обычно используются для
#локального переопределения ресурсов и т.д
#override.tf
#override.tf.json
#*_override.tf
#*_override.tf.json

#Включить файлы переопределения, которые вы хотите добавить
#в систему управления версиями с использованием отрицаемого шаблона
#!example_override.tf

# Включить файлы tfplan, чтобы игнорировать вывод плана команды: terraform plan -out=tfplan

# Игнорировать файлы конфигурации
#.terraformrc
#terraform.rc
