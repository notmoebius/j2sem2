require_relative "../lib/caesar_cipher"

describe "rotate to right one character" do
    it "should return TRUE when an integer is a multiple of 3 or 5" do
      expect(cipher_one_letter("A",3)).to eq("D")
      expect(cipher_one_letter("F",3)).to eq("I")
      expect(cipher_one_letter("Y",3)).to eq("B")
      expect(cipher_one_letter("b",3)).to eq("e")
      expect(cipher_one_letter("x",3)).to eq("a")
      expect(cipher_one_letter("z",3)).to eq("c")
      expect(cipher_one_letter("g",3)).to eq("j")
    end
    it "should do nothing si pas A->Z ou a->z" do
        expect(cipher_one_letter(".",3)).to eq(".")
        expect(cipher_one_letter(",",3)).to eq(",")
        expect(cipher_one_letter("!",3)).to eq("!")
    end
end

describe "cpiher e string car by car" do
  it "take a string and a cipher key car/car " do
    s = "What a string!"
    k = 5
    expect(caesar_cipher(s,k)).to eq("Bmfy f xywnsl!")
end
=begin
  it "should return 'Yo ! Je ne prends que les entiers naturels. TG' when -1, 1.23 or 'chiffre'" do
    expect(sum_of_3_or_5_multiples(-1)).to eq("Yo ! Je ne prends que les entiers naturels. TG")
    expect(sum_of_3_or_5_multiples(1.23)).to eq("Yo ! Je ne prends que les entiers naturels. TG")
    expect(sum_of_3_or_5_multiples("chiffre")).to eq("Yo ! Je ne prends que les entiers naturels. TG")
  end
=end
end