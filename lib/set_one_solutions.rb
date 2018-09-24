require "matasano"
require "character_frequency"

module SetOneSolutions
  def self.challenge_one
    hex_string = "49276d206b696c6c696e6720796f757220627261696e206c696b65206120706f69736f6e6f7573206d757368726f6f6d"
    Matasano.hex_to_base64(hex)
  end

  def self.challenge_two
    hex_string_1 = "1c0111001f010100061a024b53535009181c"
    hex_string_2 = "686974207468652062756c6c277320657965"
    bytes_1 = Matasano.hex_to_bytes(hex_string_1)
    bytes_2 = Matasano.hex_to_bytes(hex_string_2)

    results = Matasano.xor(bytes_1, bytes_2)

    Matasano.bytes_to_hex(results)
  end


  def self.challenge_three
    hex_string = "1b37373331363f78151b7f2b783431333d78397828372d363c78373e783a393b3736"
    bytes = Matasano.hex_to_bytes(hex_string)
    length = bytes.length

    CharacterFrequency::Mapping.each do |letter, _|
      key = []
      length.times { key << letter.bytes.first }

      Matasan.xor(bytes, key)
    end
  end
end
