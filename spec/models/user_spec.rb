require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many(:favourites) }
  it { should have_many(:houses) }
  it { is_expected.to validate_presence_of(:email) }
  it { is_expected.to validate_presence_of(:password_digest) }
end
