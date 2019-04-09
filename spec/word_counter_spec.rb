require_relative "../lib/word_counter"

describe "should return hash with occurency" do
    it "return 2 value: max price trading et best day of sale " do
        dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
      expect(word_counter("below",dictionary)).to eq({"below"=>1, "low"=>1})
      #expect(word_counter("Howdy partner, sit down! How's it going?",dictionary)).to eq({"below"=>1, "low"=>1})
    end
end
