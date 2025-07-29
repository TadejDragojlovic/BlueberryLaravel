#!/bin/bash

composer install
npm install

cp .env.example .env

php artisan migrate
php artisan db:seed

php artisan storage:link
php artisan key:generate

npm run build
php artisan serve