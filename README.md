# Basic rails web application
Rails 5 sample web application, that include sidekiq job queue/scheduler, image uploader/crop, implement user authentication and role base authorization

* Requirement Ruby 2.3 & rails 5.0;
* Redis 2.8 if you want to use sidekiq as job queue;

* install method

  mysql -uroot -pxxxxx
  
  create database simpledb;

  mysql -uroot -pxxxxx simpledb < ./db/db1104.sql
  
  admin user: testuser1, 
  
  password: 123456
