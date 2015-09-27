RSpec.describe Exercise, type: :model do
  it { should have_valid(:name).when('Scapular Retractions') }
  it { should_not have_valid(:name).when('', nil) }

  it { should have_valid(:description).when('Draw your shoulder blades back and down, as though trying to squeeze a pencil between them') }
  it { should_not have_valid(:description).when('', nil) }

end
