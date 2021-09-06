# README

* This application consists in 2 different requests:
  * To send a payload to tickets POST with user_id, title and tags (tags are not necessary and can't be more than 4) to this endpoint:
    * (POST) /tickets
    * Like this:
    `{
      "user_id" : 1234,
      "title" : "My title",
      "tags" : ["tag1", "tag2"]
    }`
    * A ticket and tags (if send it) will be created in our database.
  
  * To get the tag instance with the highest count and return it via Webhook using this endpoint:
    * (GET) /tags?{tag_id}


* To run this program:
  * `git clone <project>`
  * run `bundle install`
  * run `rails db:create db:migrate`
  * run `rails s` to start the server run in port 3000
