require_relative "../lib/set_one_solutions"

RSpec.describe SetOneSolutions  do
  context "challenge 1" do
    it "converts hex to base 64" do
      expect(SetOneSolutions.challenge_one).to eq("SSdtIGtpbGxpbmcgeW91ciBicmFpbiBsaWtlIGEgcG9pc29ub3VzIG11c2hyb29t")
    end
  end

  context "challenge 2" do
    it "does an XOR combination of two strings" do
      expect(SetOneSolutions.challenge_two).to eq("746865206b696420646f6e277420706c6179")
    end
  end

  context "challenge 3" do
    # this test should live elsewhere
    it "returns an array containing the key and parsed string" do
      expect(SetOneSolutions.challenge_three).to eq(["a", "something"])
    end
  end
end
