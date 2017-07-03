# Marios

This is a Ruby on Rails web app. Fictious store Mario's Supellectilem sells various latin products. Admins can view, add, edit, and delete products. They can also view, edit, update, and delete reviews.

This demonstrates use of seeding data from faker gem, use of scopes, unit and integration testing, proper route convention, and use of success and error messages.


##Screenshots of Homepage, Products Page, and Individual Product Page
![screen shot 2017-07-02 at 6 33 57 pm](https://user-images.githubusercontent.com/26371824/27775383-37ff2c58-5f56-11e7-9774-29e88e985166.png)
![screen shot 2017-07-02 at 6 34 20 pm](https://user-images.githubusercontent.com/26371824/27775384-3801d6e2-5f56-11e7-9ded-ef071a1de679.png)
![screen shot 2017-07-02 at 6 35 45 pm](https://user-images.githubusercontent.com/26371824/27775385-3805dd1e-5f56-11e7-84ec-01627217851e.png)


# Setup

Required:

* Ruby version 2.4.1

* Bundle

Git clone this repo:
```
git clone https://github.com/jennifer-kinsey/marios
```

Run Bundle

```
bundle install
```

* Database creation and initialization

This app uses Postgres for database storage. Please ensure Postgres is running in the background before executing the following command. If it is not running and is present on the machine you can simply open a new terminal window and run:

```
postgres
```

If it is up and running, you can move on to creating, initializing, and seeding the database with the next command:

```
bundle exec rake db:setup
```

And seed the database with fake products:
```
rails db:seed
```

* How to run the test suite

```
rspec
```

* Deployment instructions

Launch Rails:

```
rails server
```

If all goes well you should be able to launch the app in your browser at http://localhost:3000/

If you ran into any issues, Google is your friend.

## Authors

* Jennifer Kinsey

### Technologies Used

* Ruby
* Bundler
* Postgres
* Rails
* Javascript (ES6)
* HTML5
* SASS

## License

MIT License

Copyright (c) 2017 Jennifer Kinsey

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
