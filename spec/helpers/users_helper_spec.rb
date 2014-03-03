require 'spec_helper'

describe UsersHelper do

  before do
    @user = User.new(name: "Example User", email: "user@example.com",
                     password: "foobar", password_confirmation: "foobar")
  end

  describe "gravatar" do

    it "should allow specifying avatar size" do
      expect(gravatar_for(@user, size: 40)).to match(/avatar\/[0-9a-f]{32}\?s=40/)
    end

  end
end
