class Matasano
  def hex_to_base64(hex)
    [[hex].pack("H*")].pack("m0")
  end
end
