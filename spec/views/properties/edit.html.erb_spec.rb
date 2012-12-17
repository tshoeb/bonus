require 'spec_helper'

describe "properties/edit" do
  before(:each) do
    @property = assign(:property, stub_model(Property,
      :number_of_rooms => 1,
      :number_of_bedrooms => 1,
      :number_of_bathrooms => 1,
      :parking_allotment => "MyString",
      :internet_included => false,
      :street_address => "MyString",
      :property_type => "MyString",
      :owner_id => 1,
      :manager_id => 1,
      :price_per_period => "MyString",
      :period_type => "MyString",
      :purpose => "MyString",
      :owner_name => "MyString"
    ))
  end

  it "renders the edit property form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => properties_path(@property), :method => "post" do
      assert_select "input#property_number_of_rooms", :name => "property[number_of_rooms]"
      assert_select "input#property_number_of_bedrooms", :name => "property[number_of_bedrooms]"
      assert_select "input#property_number_of_bathrooms", :name => "property[number_of_bathrooms]"
      assert_select "input#property_parking_allotment", :name => "property[parking_allotment]"
      assert_select "input#property_internet_included", :name => "property[internet_included]"
      assert_select "input#property_street_address", :name => "property[street_address]"
      assert_select "input#property_property_type", :name => "property[property_type]"
      assert_select "input#property_owner_id", :name => "property[owner_id]"
      assert_select "input#property_manager_id", :name => "property[manager_id]"
      assert_select "input#property_price_per_period", :name => "property[price_per_period]"
      assert_select "input#property_period_type", :name => "property[period_type]"
      assert_select "input#property_purpose", :name => "property[purpose]"
      assert_select "input#property_owner_name", :name => "property[owner_name]"
    end
  end
end
