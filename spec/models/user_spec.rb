require "rails_helper"

RSpec.describe User, :type => :model do
  it "Creates! " do
    user = create(:user)
    expect(User.where(id: 1)).to exist
  end

  context "Does not creates with bad params" do
    it "Does not create with no name" do
      user = User.new(name: "", email: "em@ai.l", password: "ppppppppp")
      expect(user).to_not be_valid
    end
    it "Does not create with no email" do
      user = User.new(name: "name", email: "", password: "ppppppppp")
      expect(user).to_not be_valid
    end
    it "Does not create with invalid email" do
      user = User.new(name: "name", email: "em", password: "ppppppppp")
      expect(user).to_not be_valid
    end
    it "Emali has to be uniq" do
      user1 = create(:user)
      user2 = User.new(name: "name", email: user1.email, password: "pppppp")
      expect(user2).to_not be_valid
    end
  end
end
