Simple product importer app with some ajax-stuff on frontend (it uses AngularJS)
===========

* configure your database connection in config/database.yml
* run in following order:
  ```
    bundle install
    rake db:migrate
    rake db:seed
    rails s
  ```
* enjoy

Note: db:seed task imports products from XML-file (db/prod_seeds.xml)
