# postcodes
CSV containing 3000 UK postcodes, each with longitude and latitude. Also a rake task for populating your database.

## 1. Set up your model
```
rails g model Location postcode:string latitude:float longitude:float easting:string northing:string gridref:string town:string region:string
```
I've called my model 'Location' but it can be whatever you like. Note that if you change the name then you'll also need to edit the rake task. Remember to `rake db:migrate` once you've generated your model migration.


## 2. Get the CSV ready
Copy the `location.csv` file into your app. I usually put mine in `app/private_assets/location.csv`. If you change the location then you'll also need to edit the rake task.


## 3. Get the rake task ready
Copy the `location.rake` file into `lib/tasks/location.rake`. If you've changed the name of your model or the location of the csv file in steps 1 & 2 then you'll need to edit this rake file to reflect your changes.

## 4. Run the rake
`rails rake location` from the terminal is all you need to populate the database. If you're on Heroku then it's `heroku run rake location --app MyAppName`
