# Retweet bot

This retweet bot is written in Ruby, which then deployed onto Heroku with the scheduler add-on which would run the twitterBot.rb file. 

## How to install
1. Git fork/clone this repository `git clone https://github.com/herecomesjaycee/retweet-bot.git`
2. Change directory into `cd retweet-bot`
3. Go to `https://apps.twitter.com/` and create a new application for retweet bot
4. Create a .env file in root directory with the credentials [access token, access token secret, consumer key, consumer secret] provided in step 3
5. Edit the search term on line 18 from `#gudetama #英語` to the hashtag you wish to replace
6. On your terminal, run `ruby twitterBot.rb` 
7. Go to your twitter timeline and you should see a retweet from the most recent tweet on your desired hashtag

## How to automate the bot
> I chose Heroku however I am sure there will be many other platform you could use to automate the bot

1. Go to Heroku and create a new application via the dashboard, or via command line. For instruction, please see `https://devcenter.heroku.com/articles/creating-apps`
2. Once the app is successfully deployed, create a Heroku add-on via the dashboard, or via command line. For instruction, please see `https://devcenter.heroku.com/articles/scheduler`
