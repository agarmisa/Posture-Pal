class Reminder < ActiveRecord::Base
  belongs_to :user
  validates :user, presence: true

  after_create :remind

  # @@REMINDER_TIME = 30.minutes # minutes before appointment

  # Notify our appointment attendee X minutes before the appointment time
  def remind
    @twilio_number = ENV['TWILIO_NUMBER']
    @client = Twilio::REST::Client.new ENV['TWILIO_ACCOUNT_SID'], ENV['TWILIO_AUTH_TOKEN']
    # time_str = ((self.time).localtime).strftime("%I:%M%p on %b. %d, %Y")
    reminder = "Hi #{self.user.name}. Time to exercise! #{}."
    message = @client.account.messages.create(
      :from => @twilio_number,
      :to => self.user.phone,
      :body => reminder,
    )
    puts message.to
  end

handle_asynchronously :remind, :run_at => Proc.new { 1.minutes.from_now }




end
