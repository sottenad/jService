##jService

###demo
View a working demo at http://jservice.io

###installation
* clone this repo 
* cd into the directory, start run `rails s`
* `rake get_clues[1,31]` -- NOTE: this will grab approx 100K clues and takes a while. The arguments here are the range of season you want to grab. You can save some time and grab only current season by doing something like `rake get_clues[20,31]`, which would only get seasons 20 through 31
* visit `http://localhost:3000/clues` or view the routes file for more