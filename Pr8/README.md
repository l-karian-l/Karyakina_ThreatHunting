# Практическая работа №8 - Работа с GitHub Actions

## Результат 

- Репозиторий: https://github.com/l-karian-l/Website_HP_Days
- Сайт: https://l-karian-l.github.io/Website_HP_Days/

## Цель

1. Настроить автоматическое обновление сайта, созданного в практической работе 7, при изменении кода в репозитории с помощью GitHub Actions.

## Шаги

1. Изменим в настройках на.

![image](https://github.com/l-karian-l/Karyakina_ThreatHunting/assets/72932728/05d2c321-c966-4867-8b3e-4138de881eae)

2. Переходим во вкладку `Actions` инажимаем `New workflow `.

![image](https://github.com/l-karian-l/Karyakina_ThreatHunting/assets/72932728/17923ac8-b761-4fb0-91cd-f687442cedb0)

3. В открывшимся нам разделе выбираем `set up workflow yourself`.

![image](https://github.com/l-karian-l/Karyakina_ThreatHunting/assets/72932728/f9a0b23d-ff23-45e4-8a7d-e62691df05b7)

4. У нас автоматически создался файл `.yml`.

5. Заполняем данный файл, на основании инструкции [Создание пользовательского рабочего процесса GitHub Actions для публикации сайта](https://docs.github.com/ru/pages/getting-started-with-github-pages/configuring-a-publishing-source-for-your-github-pages-site#%D1%81%D0%BE%D0%B7%D0%B4%D0%B0%D0%BD%D0%B8%D0%B5-%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%D1%81%D0%BA%D0%BE%D0%B3%D0%BE-%D1%80%D0%B0%D0%B1%D0%BE%D1%87%D0%B5%D0%B3%D0%BE-%D0%BF%D1%80%D0%BE%D1%86%D0%B5%D1%81%D1%81%D0%B0-github-actions-%D0%B4%D0%BB%D1%8F-%D0%BF%D1%83%D0%B1%D0%BB%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D0%B8-%D1%81%D0%B0%D0%B9%D1%82%D0%B0)

6. Комитим наш файл. (В `Actions` мы можем посмотреть, есть ли ошибки)

7. Переходим в настройки:

![image](https://github.com/l-karian-l/Karyakina_ThreatHunting/assets/72932728/b2dfad51-b7f5-4c22-aa3b-dc104857b862)

## Пример того, что при изменении файла index, автоматически изменияется и содержание Web-сайта

- первоначально, наш сайт выглядел вот так:

![image](https://github.com/l-karian-l/Karyakina_ThreatHunting/assets/72932728/5f408f01-c929-45da-898b-06c79134e174)

- Появилась проблема: при изменении файла `index.qmd`, содержимое сайта не изменялось. 

*P.S. Было прочитано много документации. Даже был запущен Dependabot. (Теперь у меня все обновляется каждый день в 10 утра - файл `dependabot.yml`)

Немного помучившись, я нашла решение (*слава Stack Overflow*) - https://stackoverflow.com/questions/20422279/github-pages-are-not-updating

- Немного изменим `title` на **Positive Hack Days 12 - 2023**

![image](https://github.com/l-karian-l/Karyakina_ThreatHunting/assets/72932728/746090e2-b060-4e42-9463-9b6e93110f2e)

- Захадим в `Actions` и видим, что процесс запущен:

![image](https://github.com/l-karian-l/Karyakina_ThreatHunting/assets/72932728/214efd69-c39a-43e8-9251-ad71181f2b6a)

**В результате:**

![image](https://github.com/l-karian-l/Karyakina_ThreatHunting/assets/72932728/1444724b-1768-4cd8-9821-9342f2260691)

## Оценка результатов
Было настроено автоматическое обновление сайта, при изменении кода в репозитории `Web_HT_Days` с помощью GitHub Actions. В данном случае был создан рабочий процесс (workflow), который запускается каждый раз при изменении кода в репозитории. После запуска процесса, GitHub Actions автоматически клонирует репозиторий на локальную машину, устанавливает необходимые зависимости и запускает скрипт обновления сайта. После успешного выполнения скрипта, GitHub Actions автоматически отправляет уведомление об успешном обновлении сайта.

## Вывод
В рамках выполнения практической работы было установлено, что автоматическое обновление сайта при изменении кода в репозитории с помощью GitHub Actions позволяет значительно упростить и ускорить процесс разработки и обновления веб-сайтов, а также повысить качество и надежность работы сайта.



