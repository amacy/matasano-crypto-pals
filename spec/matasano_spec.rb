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
  end
end
