require 'rails_helper'

describe Review do
  it { should validate_presence_of :user }
  it { should validate_presence_of :comment }
  it { should validate_presence_of :rating }
end
