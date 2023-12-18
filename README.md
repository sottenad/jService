# Jservice.io is no longer running
Sorry for the inconvenience. 


### Requirements
* Ruby 3.1+
* Postgres


### Installation
* clone this repo
* In terminal, cd into the directory you cloned into
* run `bundle install`
* set up the database:
  * run postgres
  * `createuser -P -d steveo` (password `stepheno`)
  * `rails db:create`
  * `rake db:create`
* run `rails s`
* run `rake 'get_clues[1,38]'` -- NOTE: this will grab approx 200K clues and takes hours. The arguments here are the range of season you want to grab. You can save some time and grab selected seasons by doing something like `rake get_clues[20,31]`, which would only get seasons 20 through 31
* visit `http://localhost:3000/api/random` or view `config\routes.rb` file for more
* shoot me a pull request to the readme with your app in the wild!

