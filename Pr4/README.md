# Практическая работа №4 - Сбор и аналитическая обработка информации о сетевом трафике

## Цель работы

1.  Освоить базовые подходы процессов Threat Intelligence
2.  Освоить современные инструменты развертывания контейнирозованных
    приложений
3.  Получить навыки поиска информации об угрозах ИБ

## Шаги работы

### Шаг 1. 

- Для работы ElasticSearch требуется увеличить размер виртуальной памяти системы:

![image](https://github.com/l-karian-l/Karyakina_ThreatHunting/assets/72932728/6e328b76-8a94-4c59-912a-698f3ee7e1e6)

- Cоздаем файл окружения .env

- Создаём файл docker-compose.yml

- Запускаем:

```
    docker-compouse up -d
```

![image](https://github.com/l-karian-l/Karyakina_ThreatHunting/assets/72932728/53f11ea0-a1c2-4449-910f-19adb6aae774)

### Шаг 2.

На `localhost:8080` поднимается система.

Вводим логин и пароль из файла конфигурации окружения.

![image](https://github.com/l-karian-l/Karyakina_ThreatHunting/assets/72932728/78a2334e-c26f-42cb-a02d-0578de0e14d0)

### Шаг 3.

Импортируем файл, но перед этим преобразования файл hosts.txt в файл, формата STIX:

```
import stix2

with open('hosts.txt') as f:
    domains = f.readlines()

indicators = []
for domain in domains:
    if domain == '':
        continue
    try:
        indicator = stix2.Indicator(
            name=f'Malicious Domain: {domain}',
            pattern="[domain-name:value = '{}']".format(domain),
            pattern_type="stix",
            labels=['malicious host']
        )
        indicators.append(indicator)
    except stix2.exceptions.InvalidValueError:
        print(domain)
        continue
    
bundle = stix2.Bundle(objects=indicators)
# Write the bundle to a STIX file
with open('malicious_domains.stix', 'w') as f:
    f.write(bundle.serialize(indent=4))
```

![image](https://github.com/l-karian-l/Karyakina_ThreatHunting/assets/72932728/d3488ab1-c259-4e0b-a9da-431c98ea7864)

![image](https://github.com/l-karian-l/Karyakina_ThreatHunting/assets/72932728/77b84d60-113f-425e-bef4-831c5dcfb168)

Хостов не было найдено:

![image](https://github.com/l-karian-l/Karyakina_ThreatHunting/assets/72932728/81ff4828-21c3-468e-8f00-287cf80aefef)

## Оценка результата

С помощью платформы OpenCTI удалось проанализировать трафик на предмет перехода по нежелательным доменам.

## Вывод

В ходе практической работы, были изучены возможности работы с платформой threat intelligence OpenCTI для анализа сетевого трафика.
