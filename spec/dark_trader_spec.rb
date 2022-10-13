require_relative '../lib/dark_trader'

describe "crypto" do
    it "return an array of all crypto with their prices" do
        expect(crypto(scrapper)).to be_an(Array)
    end



    it "return the name of crypto" do  
     expect(crypto(scrapper)).to include {"BTC"}
     expect(crypto(scrapper)).to include {"ETH"}
     expect(crypto(scrapper)).to include {"USDT"}
    end 

end
