RSpec.describe Checkin, type: :model do
  it { should have_valid(:user_id).when(1) }
  it { should_not have_valid(:user).when(nil) }

end
