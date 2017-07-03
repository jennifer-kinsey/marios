FactoryGirl.define do
  factory(:product) do
    name('zwieback')
    description('desc1')
    image('img1')
    origin('origin1')
    cost(1)
  end
end
