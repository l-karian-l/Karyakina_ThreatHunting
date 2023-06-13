# Практическая работа №3 - Развертывание системы мониторинга ELK Stack

## Цель

1.  Освоить базовые подходы централизованного сбора и накопления информации
2.  Освоить современные инструменты развертывания контейнирозованных приложений
3.  Закрепить знания о современных сетевых протоколах прикладного уровня

## Ход выполнения практической работы

### Шаг 1. Развернуть систему мониторинга на базе ElasticSearch

1.  Увеличиваем размер виртуальной памяти системы

![image](https://github.com/l-karian-l/Karyakina_ThreatHunting/assets/72932728/16123faf-490e-4cb9-821f-9110c9b7dd5a)

2. Создаём файл `docker-compose.yml`, а так же конфигурационные файлы для каждого модуля:

3. Запускаем Docker container

```
docker compose up -d
```
К сожалению, у меня появилась данная ошибка, с которой мне не удалось разобраться. 

![image](https://github.com/l-karian-l/Karyakina_ThreatHunting/assets/72932728/21553a6c-c246-4652-8a5a-959b59bb3a1e)

Проверка контейнеров:
```
docker compose ps -a
```

![image](https://github.com/l-karian-l/Karyakina_ThreatHunting/assets/72932728/043ab503-6dd5-4b2b-a311-54d4491ffb17)

4.  Filebeat и Packetbeat

Для каждого модуля создаются конфиги. Для удобства сохранены в папке config

![image](https://github.com/l-karian-l/Karyakina_ThreatHunting/assets/72932728/67ed2420-1cf2-4a99-a841-e6cefa982087)

В них прописаны адреса подключения к Elasticsearch, Kibana, а также для Packetbeat указаны сетевые интерфейсы, для Filebeat - файлы для чтения.

5. Через `localhost:5601` подключаемся к Elastic.

![image](https://github.com/l-karian-l/Karyakina_ThreatHunting/assets/72932728/97aee60a-1349-4a1d-b109-eb100377741b)

![image](https://github.com/l-karian-l/Karyakina_ThreatHunting/assets/72932728/9e00897a-acab-4a37-b5cd-a1da3196a3b3)

6. Из-за ошибки, выводимой в пункте 3, при создании index было отображено:

![image](https://github.com/l-karian-l/Karyakina_ThreatHunting/assets/72932728/21c6a495-a69a-4e6a-a84a-d4757ee9c710)

На данном этапе, к сожалению, я остановилась. 

## Оценка результата

Была частично развёрнута система ElasticSearch. 

## Вывод

В результате работы были не до конца освоены система контейнеризации приложений
Docker, инструментальное средство Docker Compose и система
централизованного сбора и накопления информации ElasticSearch.
