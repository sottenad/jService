##jService

###Demo
View a working demo at http://jservice.io

###Installation
* clone this repo 
* In terminal, cd into the directory you cloned into
* run `bundle install` 
* run `rails s`
* Either import the db (included) or run `rake get_clues[1,31]` -- NOTE: this will grab approx 130K clues and takes a while. The arguments here are the range of season you want to grab. You can save some time and grab only current season by doing something like `rake get_clues[20,31]`, which would only get seasons 20 through 31
* visit `http://localhost:3000/clues` or view `config\routes.rb` file for more
* shoot me a pull request to the readme with your app in the wild!

###jService in the wild
* [jService Twitter Bot](http://twitter.com/jservicebot)
* [TrebekBot for Slack](https://github.com/gesteves/trebekbot)
* [Trebek for HipChat](https://github.com/yanigisawa/hip-trebek)
* [jApi - ruby gem for jService](https://github.com/djds23/jApi)
