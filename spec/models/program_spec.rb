RSpec.describe Program, type: :model do
  it { should have_valid(:name).when('All About the Back') }
  it { should_not have_valid(:name).when('', nil) }

end
