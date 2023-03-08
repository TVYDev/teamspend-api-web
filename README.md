# 💰 TeamSpend

## 🌱 Dev Environment

- Clone the repo
- Make sure there is docker engine install and running (e.g. Docker Desktop)
- Go to `src` directory of the project and run command to install packages of the project

  ```
    $ cd src
    $ docker-compose run --rm composer install
  ```

- We need to provide full permission to `storage` directory of laravel project to make it work. So temporarily before elegant solution is found, we go directly to container of service `nginx` to modify the permission

  ```
    $ cd /var/www/html/src
    $ chmod 777 -R storage
  ```

- Standing in the root of the project, run command to build the docker compose and up the services in the background,

  ```
    $ docker-compose up -d --build
  ```

- Now we can access the project from `localhost:8088`

- To down the services of the app run command

  ```
    $ docker-compose down
  ```

## ⛏️ Access tools

- Composer

  ```
    $ docker-compose run --rm composer -v
  ```

- NPM

  ```
    $ docker-compose run --rm npm -v
  ```

- Artisan

  ```
    $ docker-compose run --rm artisan -v
  ```

## 📅 Database

- To migrate, run command

  ```
    $ docker-compose run --rm artisan migrate
  ```

- To access the database using database client

  ```
    host = postgresql
    port = 5432
    user = postgres
    password = postgres
  ```
