require 'stringwrapper'

RSpec.describe StringWrapper do
  let(:new_str) { StringWrapper.new('hello')}

  describe "#reverse" do
    it "reverses the string" do
      expect(new_str.reverse).to eq('olleh')
    end
  end

  describe "#upcase" do
    it "converts the string to uppercase" do
      expect(new_str.upcase).to eq('HELLO')
    end
  end

  describe "#downcase" do
    it "converts the string to lowercase" do
      new_str.upcase
      expect(new_str.downcase).to eq('hello')
    end
  end
end
