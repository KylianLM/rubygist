Rubygist
===================

Project for **[BrANDCelebrities](http://brandandcelebrities.com/)**

What is Rubygist
-------------

Rubygist is an application in ruby, you can save and classify gists as desired.

How to install
-------------

After retrieving the project archive , do the following commands

    $ bundle install

then you need to change 'config/database.yml' with your own settings, for example :

 - username: root
 - password: root
 - host: 127.0.0.1
 - port: 3306


After, you need to create project's databases.

    $ rake db:create
    $ rake db:migrate
    $ rake db:seed

  and finally

    $ rails server

How to get your mysql settings
-------------
to get your mysql settings

    $ mysql -u root -p
    $ mysql> SHOW variables;


