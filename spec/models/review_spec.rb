require 'rails_helper'

describe Review do
  it { should validate_presence_of :user }
  it { should validate_presence_of :comment }
  it { should validate_presence_of :rating }
  it { should validate_length_of(:comment).is_at_least(50) }
  it { should validate_length_of(:comment).is_at_most(250) }
  it { should belong_to :product }
end
