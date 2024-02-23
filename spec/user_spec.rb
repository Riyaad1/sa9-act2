require 'user'

RSpec.describe User do
  describe "#log_in" do
    it "logs the user in" do
      new_user = User.new('test')
      new_user.log_in
      expect(new_user.logged_in).to be true
    end
  end

  describe "#log_out" do
    it "logs the user out" do
      new_user = User.new('test')
      new_user.log_in
      new_user.log_out
      expect(new_user.logged_in).to be false
    end
  end

  describe "#username" do
    it "returns the correct username" do
      new_user = User.new('test')
      expect(new_user.username).to eq('test')
    end
  end
end
