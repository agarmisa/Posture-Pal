namespace :twilio do
  desc "Texts user 1 times a day, 5 days a week"
  task :send_reminder => :environment do
    Reminder.all.each do |reminder|
      reminder.remind
    end
  end
end


# task :send_reminders => :environment do
#   User.send_reminder
# end
