require 'spec_helper'

describe User do
  it "enforces uniqueness of user names" do
    existing_user = Factory :user
    User.new(name: existing_user.name).should_not be_valid
  end
end
