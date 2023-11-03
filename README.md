## Инструкция
Для локального тестирования необходимо создать виртуальное окружение командой `python3 -m venv venv` и активировать его. Команда `venv\Scripts\activate.bat` - для Windows; `source venv/bin/activate` - для Linux и MacOS.

Затем необходимо перейти в папку с нужным уроком и установить зависимости командой `pip install -r requirements.txt`.

Затем необходимо перейти в папку `src` командой `cd src` и запустить команду `uvicorn main:app --reload` для запуска сервера `uvicorn`. 

После этого можно зайти в браузере по адресу `http://localhost:8000/docs` для просмотра доступных эндпоинтов.

## BackEnd
Библиотеки: alembic, sqlalchemy, fastapi-users, fastapi-cache, celery, redis, jinja.

Технологии: аутентификация пользователей (fastapi-users), кэширование запросов (redis), отложенные задачи (celery + redis), тестирование (pytest).

## Краткое руководство
`AUTH` - представляет собой регистрацию нового пользователя, логин и логаут.

![Снимок](https://github.com/Volotova/FastAPI_invest/assets/118131020/9d99da7e-e565-405b-864f-33ee320c2cae)

`Operation` - представляет собой создание новых операций, отображение операций по типу операции, отображение всех операций.

![Снимок](https://github.com/Volotova/FastAPI_invest/assets/118131020/bbabc075-f857-4dd1-87f4-2db8be936eae)

`Chat` - онлайн чат хранящий последние 5 сообщений для новых подключенных пользователей.

![Снимок](https://github.com/Volotova/FastAPI_invest/assets/118131020/808eb209-0aa2-47e8-b60a-3fa5aa19a7f8)
![Снимок](https://github.com/Volotova/FastAPI_invest/assets/118131020/87c025d7-d18a-4fcc-b5bf-26a29f0eec4d)
