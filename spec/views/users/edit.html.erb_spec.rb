require 'spec_helper'

describe "users/edit" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :email => "MyString",
      :password_digest => "MyString",
      :name => "MyString",
      :contact_email => "MyString",
      :contact_phone => "MyString",
      :admin => false
    ))
  end

  it "renders the edit user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path(@user), :method => "post" do
      assert_select "input#user_email", :name => "user[email]"
      assert_select "input#user_password_digest", :name => "user[password_digest]"
      assert_select "input#user_name", :name => "user[name]"
      assert_select "input#user_contact_email", :name => "user[contact_email]"
      assert_select "input#user_contact_phone", :name => "user[contact_phone]"
      assert_select "input#user_admin", :name => "user[admin]"
    end
  end
end
