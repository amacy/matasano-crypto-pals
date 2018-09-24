require 'pry'

class Matasano
  def hex_to_base64(hex_string)
    string = _decode_hex(hex_string)
    _encode_base64(string)
  end

  def xor(hex_1, hex_2)
    bytes_1 = _decode_hex(hex_1).bytes
    bytes_2 = _decode_hex(hex_2).bytes

    results = []
    bytes_1.each_with_index do |byte, index|
      result = byte ^ bytes_2[index]
      results << result
    end

    _bytes_to_hex(results)
  end

  def _decode_hex(hex_string)
    [hex_string].pack("H*")
  end

  def _encode_base64(string)
    [string].pack("m0")
  end

  def _bytes_to_hex(bytes)
    bytes.map { |byte| byte.to_s(16) }.join
  end
end
