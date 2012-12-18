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
end