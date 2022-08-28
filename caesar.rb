# Caesar Class
class Caesar
  def cipher(string, num)
    shift = num % 26
    cipher = ''
    string.each_byte do |unicode|
      cipher << unicode.chr if non_alpha?(unicode)
      cipher << shift_upper(unicode, shift) if uppercase?(unicode)
      cipher << shift_lower(unicode, shift) if lowercase?(unicode)
    end
    cipher
  end

  private

  def uppercase?(unicode)
    return true if unicode >= 65 && unicode <= 90

    false
  end

  def lowercase?(unicode)
    return true if unicode >= 97 && unicode <= 122

    false
  end

  def non_alpha?(unicode)
    return false if unicode.between?(65, 90) || unicode.between?(97, 122)

    true
  end

  def shift_upper(byte, shift)
    temp = byte + shift
    temp = temp % 90 + 64 if temp > 90
    temp.chr
  end

  def shift_lower(byte, shift)
    temp = byte + shift
    temp = temp % 122 + 96 if temp > 122
    temp.chr
  end
end
