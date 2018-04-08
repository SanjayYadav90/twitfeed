# Fetches tweets since yesterday and loads to the database
# Note: This process is slow, because it fetches GeoCoding info from the internet
namespace :twitfeed do
  desc 'fetch tweets containing #hashtags every 12 hrs'
  task fetch: :environment do
    log_file = ENV['log'] == 'stdout' ? STDOUT : Rails.root.join('log/cron.log')
    since = ENV['days'] ? ENV['days'].to_i.days.ago.to_date : (Date.today - 1.day)
    logger = Logger.new(log_file)

    tags = Tag.all
    tags.each do |tag|
      logger.info "Fetching tweets for #{tag.name}"
      query = "##{tag.name} since:#{since}"
      tweets = TwitterClient.search(query)
      logger.info "Query: '#{query}'"
      logger.info "Tweets count for #{tag.name}: #{tweets.count}"
      log = ''

      tweets.each.with_index do |tweet, index|
        Tweet.create_from(tweet, tag)

        log << "#{index}, "
      end
      logger.info log
    end
  end
end