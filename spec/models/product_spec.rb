require 'rails_helper'

describe Product do
  it { should validate_presence_of :name }
  it { should validate_presence_of :description }
  it { should validate_presence_of :image }
  it { should validate_presence_of :origin }
  it { should validate_presence_of :cost }

  it { should have_many :reviews }

  ##Scope tests

  let(:prod1){
    Product.create(
    name: "name1",
    description: "desc1",
    image: "img1",
    origin: "origin1",
    cost: 1,
    )
  }
  let(:prod2){
    Product.create(
    name: "name2",
    description: "desc2",
    image: "img2",
    origin: "United States",
    cost: 2,
    )
  }

  describe ".newest_product" do
    it "returns the most recently reviewed products" do
      prod1
      prod2
      expect(Product.newest_product).to eq([prod2, prod1])
    end
  end

  describe ".most_reviewed" do
    it "returns the most reviewed product" do
      prod1
      prod2
      3.times do
        prod1.reviews.create(
          user: "Jill",
          comment: "this is just fantastic. I love it. Blah blah. I think I hit 50 chars.",
          rating: 5
        )
      end
      expect(Product.most_reviewed).to eq([prod1])
    end
  end

  describe ".sort_by_us_origin" do
    it "returns the products of US origin" do
      prod1
      prod2
      expect(Product.sort_by_us_origin).to eq([prod2])
    end
  end

end
