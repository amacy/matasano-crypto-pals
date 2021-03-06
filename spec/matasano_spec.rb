require_relative "../lib/matasano"

RSpec.describe Matasano do
  let(:matasano) { Matasano.new }

  context "set 1" do
    context "challenge 1" do
      it "converts hex to base 64" do
        hex = "49276d206b696c6c696e6720796f757220627261696e206c696b65206120706f69736f6e6f7573206d757368726f6f6d"
        expect(matasano.hex_to_base64(hex)).to eq("SSdtIGtpbGxpbmcgeW91ciBicmFpbiBsaWtlIGEgcG9pc29ub3VzIG11c2hyb29t")
      end
    end

    context "challenge 2" do
      it "does an XOR combination of two strings" do
        expect(matasano.xor("1c0111001f010100061a024b53535009181c", "686974207468652062756c6c277320657965")).to eq("746865206b696420646f6e277420706c6179")
      end
    end
  end
end
