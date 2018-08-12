# this is an event application management


do the following commands to run the application server:


1 - `git clone git@github.com:Amrzohdi/eventbrite.git`

2 - `cd eventbrite`

3 - `bundle install`

    you should have postgres installed and have eventbrite role with CREATEDB LOGIN    

4 - `rake db:create db:migrate db:seed`

5 - `rails s`

finally go to [localhost:3000](http://localhost:3000).


a user should be created by seeds with: 
        
        email: example@gmail.com
        password: asdasd123