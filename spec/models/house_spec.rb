require 'rails_helper'

RSpec.describe House, type: :model do
  it { should have_many(:favourites) }
  it { should have_many(:users) }
  it { is_expected.to validate_presence_of(:price) }
  it { is_expected.to validate_presence_of(:owner) }
  it { is_expected.to validate_presence_of(:about) }
  it { is_expected.to validate_presence_of(:details) }
  it { is_expected.to validate_presence_of(:image) }
end
