require 'spec_helper'

describe Message do
  it "should have proper associations" do
       should belong_to(:user)
  end
end
