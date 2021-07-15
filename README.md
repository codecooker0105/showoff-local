# showoff-local
 showofff backend development in local
 
 ## Requirements

- PHP 7.1.3
- HTTP server with PHP support (e.g.: Apache, Nginx, Caddy)
- [Composer](https://getcomposer.org)
- A supported database: MySQL, PostgreSQL or SQLite

## Installation

Please check the official laravel installation guide for server requirements before you start. [Official Documentation](https://laravel.com/docs/5.4/installation#installation)

Clone the repository

    git clone git@github.com:codecooker0105/showoff-local.git

Switch to the repo folder

    cd showoff-local

Install all the dependencies using composer

    composer install

Copy the example env file and make the required configuration changes in the .env file

    cp .env.example .env

Generate a new application key

    php artisan key:generate

Generate a new JWT authentication secret key

    php artisan jwt:generate

Run the database migrations (**Set the database connection in .env before migrating**)

    php artisan migrate

Start the local development server

    php artisan serve

You can now access the server at http://localhost:8000

