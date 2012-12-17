require 'spec_helper'

describe "properties/show" do
  before(:each) do
    @property = assign(:property, stub_model(Property,
      :number_of_rooms => 1,
      :number_of_bedrooms => 2,
      :number_of_bathrooms => 3,
      :parking_allotment => "Parking Allotment",
      :internet_included => false,
      :street_address => "Street Address",
      :property_type => "Property Type",
      :owner_id => 4,
      :manager_id => 5,
      :price_per_period => "Price Per Period",
      :period_type => "Period Type",
      :purpose => "Purpose",
      :owner_name => "Owner Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/Parking Allotment/)
    rendered.should match(/false/)
    rendered.should match(/Street Address/)
    rendered.should match(/Property Type/)
    rendered.should match(/4/)
    rendered.should match(/5/)
    rendered.should match(/Price Per Period/)
    rendered.should match(/Period Type/)
    rendered.should match(/Purpose/)
    rendered.should match(/Owner Name/)
  end
end
