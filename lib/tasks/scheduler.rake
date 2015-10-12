namespace :twilio do
  desc "Texts user 1 times a day, 5 days a week"
  task :send_reminder1 => :environment do
    Reminder.all.each do |reminder|
      reminder.remind(Exercise.first)
    end
  end

  task :send_reminder2 => :environment do
    Reminder.all.each do |reminder|
      reminder.remind(Exercise.second)
    end
  end

  task :send_reminder3 => :environment do
    Reminder.all.each do |reminder|
      reminder.remind(Exercise.third)
    end
  end
end
