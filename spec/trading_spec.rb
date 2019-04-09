require_relative "../lib/trading"

describe "day of trading" do
    it "return 2 value: max price trading et best day of sale " do
      expect(day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1,4])

    end
end

