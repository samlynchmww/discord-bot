require 'discordrb'

config = File.foreach('config.txt').map { |line| line.split(' ').join(' ') }
token = config[0].to_s

bot = Discordrb::Commands::CommandBot.new token: "#{token}", client_id: "#{config[1].to_s}", prefix: "#{config[2].to_s}"

bot.command :ping do |msg|
    msg.respond "pong!"
end

bot.command :test do |event|
    event.respond "using any name is ok lol, wait is it called params????"
end

bot.command :grfm do |event|
    event.respond "big baby poo poo dentist"
end

at_exit { bot.stop }
bot.run