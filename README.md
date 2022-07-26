Andrew Roellig notes
=======================
These are instructions on how I tested my code and what to exect.
to start the app, make sure you have downloaded docker and have it running on your desktop
then run these commands in the following order
```
docker-compose build app
docker-compose run --rm app bundle install
docker-compose run --rm app bundle exec rails db:create db:schema:load
docker-compose run --rm app bundle exec rails db:seed
docker-compose run --rm -e RAILS_ENV=test app bundle exec rails db:migrate
docker-compose up -d
```
you can then go to your localhost in browser or whatever other program you wish to test it. I used my browser and the http vs code extension to test my routes
```
requirement 1: code for seeds can be found in the db/seeds.rb rile
```
```
requirement 2: enter localhost:3000/api/appointments as a GET request code may be found in app/controllers/api/appointments.rb
```
```
requirement 3: enter localhost:3000/api/appointments and then add the following tags at the end as a GET request code may be found in app/controllers/api/appointments.rb
?past=1
?past=0
?length=5&page=1
```
```
requirement 4:localhost:3000/api/doctors as a GET request code may be found in app/controllers/api/doctors.rb
```
```
requirement 5: localhost:3000/api/appointments as a POST request code may be found in app/controllers/api/appointments.rb
```
in the images folder I added images from my results of each of these test


SimplePractice Programming Test
=======================

The goal of the SimplePractice programming test is to evaluate the programming abilities
of candidates. The ideal candidate would know Ruby, JavaScript, or another language with
great proficiency, be familiar with basic database and HTTP API principles, and able to
write clean, maintainable code. This test gives candidates a chance to show these
abilities.

Getting Your Environment Ready
------------------------------

You'll need a development computer with access to github.com. You'll also need to set up
Docker CE (https://www.docker.com/community-edition), which is free. Sample `Dockerfile`
and `docker-compose.yml` files are included in this repo along with a basic scaffolded
Rails application.

There is a `Makefile` included for your convenience that has sample commands for building
and managing your application via the command line.

Please make sure you can bring up your app with `make up` well before the start of the
test. You should be able to run the tests if the basic setup works.

```bash
$ make
$ make build
$ make dbcreate
$ make test
```

If you need to use generators with docker:

```bash
docker-compose run app bundle exec rails scaffold users
```

Or, alternatively, you can "ssh" into the container (to exit, type `exit` or `ctrl + d`)

```bash
$ make bash
$ bundle exec rails g scaffold users
```

**NOTE** since the generator runs inside of Docker (and this container runs as
the `root` user), you will need to change the permissions of the generated
files. The following command is added as a convenience and should be run after
generated files are created to avoid "write permission" failures.

```bash
sudo chown -R $USER .
```

OR

```bash
make chown
```

Evaluation Criteria
-------------------

When evaluating the program, the following are among the factors considered:

 * Does it run?
 * Does it produce the correct output?
 * How did _you_ gain confidence your submission is correct?
 * Were appropriate algorithms and data structures chosen?
 * Was it well written? Are the source code and algorithms implemented cleanly?
   Would we enjoy your code living along side our own?
 * Is it slow? For small to medium sized inputs, the processing delay should
   probably not be noticeable.
# simplepracticechallenge
