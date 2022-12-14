## jService

<p>The costs for running jservice have gone up to approx $200/yr. If you get value from this project, please consider pitching in a few dollars to keep it running</p>
<a href="https://www.buymeacoffee.com/sottenad0">Help Support jservice</a>
or venmo <a href="https://account.venmo.com/u/steve-ottenad">@steve-ottenad</a>

### Demo
View a working demo at http://jservice.io

### Requirements
* Ruby 3.1+
* Postgres


### Installation
* clone this repo 
* In terminal, cd into the directory you cloned into
* run `bundle install` 
* run `rails s`
* run `rake get_clues[1,38]` -- NOTE: this will grab approx 200K clues and takes hours. The arguments here are the range of season you want to grab. You can save some time and grab selected seasons by doing something like `rake get_clues[20,31]`, which would only get seasons 20 through 31
* visit `http://localhost:3000/api/random` or view `config\routes.rb` file for more
* shoot me a pull request to the readme with your app in the wild!

### jService in the wild
* [Jeffpardy - practice your Jeopardy skills!](https://jeffpardy.surge.sh/)
* [jService Twitter Bot](http://twitter.com/jservicebot)
* [TrebekBot for Slack](https://github.com/gesteves/trebekbot)
* [Trebek for HipChat](https://github.com/yanigisawa/hip-trebek)
* [jApi - ruby gem for jService](https://github.com/djds23/jApi)
* [Hip Trivia for HipChat](https://github.com/aarontam/hip-trivia)
* [Flashcard Jeopardy!](https://codepen.io/DesmondW/full/ExZexOV)
* [Jeppy - 6 Question Jeopardy Game](http://jeppy.herokuapp.com)
