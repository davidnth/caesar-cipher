require './caesar'

describe Caesar do
  describe '#cipher' do
    it 'cyphers "hello"' do
      caesar = Caesar.new
      expect(caesar.cipher('hello', 5)).to eql('mjqqt')
    end

    it 'works with integers greater than 26' do
      caesar = Caesar.new
      expect(caesar.cipher('hello', 27)).to eql('ifmmp')
    end

    it 'handles upper and lower case letters' do
      caesar = Caesar.new
      expect(caesar.cipher('Hello', 2)).to eql('Jgnnq')
    end

    it 'ignores non-alphabetical characters' do
      caesar = Caesar.new
      expect(caesar.cipher('Hello World!', 2)).to eql('Jgnnq Yqtnf!')
    end

    it 'wraps around correctly if shifting past "z/Z' do
      caesar = Caesar.new
      expect(caesar.cipher('yes', 8)).to eql('gma')
    end
  end
end
