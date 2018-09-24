require 'pry'

module Matasano
  def self.hex_to_base64(hex_string)
    bytes = hex_to_bytes(hex_string)
    string = bytes_to_string(bytes)
    encode_base64(string)
  end

  def self.xor(bytes_1, bytes_2)
    results = []
    bytes_1.each_with_index do |byte, index|
      result = byte ^ bytes_2[index]
      results << result
    end

    results
  end

  def self.hex_to_bytes(hex_string)
    [hex_string].pack("H*").bytes
  end

  def self.encode_base64(string)
    [string].pack("m0")
  end

  def self.bytes_to_hex(bytes)
    bytes.map { |byte| byte.to_s(16) }.join
  end

  def self.bytes_to_string(bytes)
    bytes.map(&:chr).join
  end
end
