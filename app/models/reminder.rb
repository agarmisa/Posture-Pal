class Reminder < ActiveRecord::Base
  belongs_to :user
  validates :user, presence: true


  def remind(exercise)
    @twilio_number = ENV['TWILIO_NUMBER']
    @client = Twilio::REST::Client.new ENV['TWILIO_ACCOUNT_SID'], ENV['TWILIO_AUTH_TOKEN']
    reminder = "Hi #{self.user.name}. Time to exercise! Scapular Retractions."
    message = @client.account.messages.create(
      from: @twilio_number,
      to: self.user.phone,
      body: reminder,
    )
    puts message.to
  end
end
