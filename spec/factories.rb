require 'factory_girl'

FactoryGirl.define do
    factory :user do
    	admin true
    	contact_email "talal@cmu.edu"
    	contact_phone "+97477155015"
    	email "talal@cmu.edu"
    	name "Talal Shoeb"
    	password "hello"
    	password_confirmation "hello"
    end

    factory :property do
    	internet_included true
    	manager_id 1
    	number_of_bathrooms 2
    	number_of_bedrooms 2
    	number_of_rooms 6
    	owner_id 1
    	owner_name "Talal Shoeb"
    	parking_allotment 2
    	period_type "Monthly"
    	price_per_period "8000 QR"
    	property_type "Villa"
    	purpose "Primary Accomodation"
    	street_address "Doha, Qatar"
    end
end