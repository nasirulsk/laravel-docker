1. Install Docker Desktop
2. Install Docker Compose
3. make build
4. docker exec -it fatagent_mysql_container bash
5. Now Install laravel, setup evn, install composer, import DB, run migrations, run seeder
6. add .htaccess file into ./laravel folder





-------------------------------------
.htaccess file content
-------------------------------------
RewriteEngine On
RewriteCond %{REQUEST_URL} !^/public/
RewriteRule ^(.*)$ /public/$1 [L,QSA]

