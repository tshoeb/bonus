require 'spec_helper'

describe User do
  	describe "Validation Macros" do
        it {should validate_presence_of(:name)}
        it {should validate_presence_of(:email)}
        it {should validate_presence_of(:contact_email)}
        it {should validate_presence_of(:contact_phone)}
        it {should validate_presence_of(:password)}
        it {should validate_presence_of(:password_confirmation)}
    end
    describe "Validates good emails" do
        it {should allow_value("fred@fred.com").for(:email)}
        it {should allow_value("fred@qatar.cmu.edu").for(:email)}
    end
    describe "Rejects bad emails" do
        it {should_not allow_value("fred").for(:email)}
        it {should_not allow_value("fred@fred,com").for(:email)}
    end
    describe "Validates good emails" do
        it {should allow_value("fred@fred.com").for(:contact_email)}
        it {should allow_value("fred@qatar.cmu.edu").for(:contact_email)}
    end
    describe "Rejects bad emails" do
        it {should_not allow_value("fred").for(:contact_email)}
        it {should_not allow_value("fred@fred,com").for(:contact_email)}
    end
    describe "Validates good phone numbers" do
        it {should allow_value("97477155015").for(:contact_phone)}
    end
    describe "Rejectss bad phone numbers" do
        it {should_not allow_value("800-EAT-FOOD").for(:contact_phone)}
    end
    describe "All factories are properly created" do
        before(:each) do
            @talal = FactoryGirl.create(:user)
            @ross = FactoryGirl.create(:user, :name => "Ross Geller", :admin => false)
            @rachel = FactoryGirl.create(:user, :name => "Rachel Greene", :contact_phone => "97466911306")
        end
        it "should check the creation of owners" do
            @talal.should be_valid
            @ross.should be_valid
            @rachel.should be_valid
            @talal.name.should == "Talal Shoeb"
            @ross.name.should == "Ross Geller"
            @rachel.name.should == "Rachel Greene"
            @talal.admin.should be true
            @ross.admin.should be false
            @ross.admin.should_not be true
        end
        it "should remove all + and . from phone before save" do
            @rachel.contact_phone.should == "97466911306"
        end
       
        it "should return the names in alphabetical order" do
            User.alphabetical.map{|u| u.name}.should == ["Rachel Greene", "Ross Geller", "Talal Shoeb"]
        end
    end
end
