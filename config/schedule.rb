# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"

every 1.day, at: '00:00' do
  rake 'twitfeed:fetch'
end

# every 5.minute do
#   rake "twitfeed:fetch"
# end

# Learn more: http://github.com/javan/whenever