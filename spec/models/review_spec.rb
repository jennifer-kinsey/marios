require 'rails_helper'

describe Review do
  it { expect validate_presence_of :user }
  it { expect validate_presence_of :comment }
  it { expect validate_presence_of :rating }
  it { expect validate_length_of(:comment).is_at_least(50) }
  it { expect validate_length_of(:comment).is_at_most(250) }
  it { expect validate_numericality_of(:rating).is_less_than_or_equal_to(5) }
  it { expect validate_numericality_of(:rating).is_greater_than_or_equal_to(1) }
  it { expect belong_to :product }

end
