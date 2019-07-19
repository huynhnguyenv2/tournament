# README

## Getting started

To get the Rails server running locally:

* Clone this repo
* **bundle install** to install all req'd dependencies
* **rails db:migrate** to make all database migrations
* **rake db:seed** to seed the datas
* **rails s** to start the local server

## Test the api

Get *localhost:3000/tournament/matches/:name* to get info matches by tournament name 
Get *localhost:3000/players/find-matches/:name* to get info matches by player name 
Get *localhost:3000/players/find-name/:name* to get info player by name 

## Design model

![alt](https://i.ibb.co/Cs125sx/1.png)

## Issues
* I used the app/services/process_csv.rb to read file .csv but the inputs were nil.

* In the model Player. Player has_many Links (in model Link) but when I set Player has_many Matches, it's not work. I had change has_many :links to has_many :home_yards to continue.

