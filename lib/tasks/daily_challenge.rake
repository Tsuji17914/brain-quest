namespace :daily_challenge do
  desc "Generate today's daily challenge from question pool"
  task generate: :environment do
    daily = DailyChallengeGenerator.call
    if daily
      puts "Generated DailyChallenge: #{daily.genre} (#{daily.quests.count} quests)"
    else
      puts "DailyChallenge for #{Date.today} already exists"
    end
  end
end
