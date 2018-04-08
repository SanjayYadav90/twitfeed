# TwitFeed  

A Ruby on Rails based web app to find tweets on topics you choose. TwitFeed will fetch tweets mentioning hash-tags set in database-table 'tags' once a day. Will display the Feeds in feed-Chart in the dashbaord. Any user Authenticated via Twitter will be able to done.

## Dashboard 


It will periodically fetch tweets from Twitter about those topics and categorizes them according 
of the respective authors.

Default tags would be
- `#Cricket`

Admin will be able to add tags.

## Authentication
Users will get authenticated using OAuth2 to Twitter and Devise. An Authenticated user will be able to click on the tags categorized by author-location, which will show them the timeline of tweets along with the map of the region (if its a valid location).

## Admin
Admin will be able to manipulate data from the control panel. We are using active-admin for that purpose. 

### How To Access
- **Development**
  - goto URL [http://localhost:3000/admin](http://localhost:3000/admin)

## Ruby version
Ruby version `2.4+` will be supported.

## System dependencies
  - Cron
    - Used whenever gem to write to cron tab; see `schedule.rb` for more info
    - Cron is supposed to execute the rake task `lib/tasks/fetch_tweets_daily.rake` once every day

## Configuration
  - Make sure you use URL `http://127.0.0.1:3000` or `http://locahost:3000`
  - Use `whenever --update-crontab` to update your cron tab for auto-fetching the tweets once a day

## Database Commands
```ruby
  $ rails db:create
  $ rails db:migrate
  $ rails db:seed
```

* How to run the test suite
```ruby
  $ rspec spec/
```
## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/SanjayYadav90/twitfeed. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the Contributor Covenant code of conduct.

## License

The Rails App is available as open source under the terms of the MIT License.
