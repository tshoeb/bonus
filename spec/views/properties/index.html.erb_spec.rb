require 'spec_helper'

describe "properties/index" do
  before(:each) do
    assign(:properties, [
      stub_model(Property,
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
      ),
      stub_model(Property,
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
      )
    ])
  end

  it "renders a list of properties" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Parking Allotment".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Street Address".to_s, :count => 2
    assert_select "tr>td", :text => "Property Type".to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => "Price Per Period".to_s, :count => 2
    assert_select "tr>td", :text => "Period Type".to_s, :count => 2
    assert_select "tr>td", :text => "Purpose".to_s, :count => 2
    assert_select "tr>td", :text => "Owner Name".to_s, :count => 2
  end
end
