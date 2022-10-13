require_relative '../lib/mairie_christmas'

describe "Mairie Christmas" do
    it "return an array of all Townhall with their mail" do
        expect(perform).to be_an(Array)
    end



    it "return the name of Townhall" do  
     expect(perform).to include {"SAGY"}
     expect(perform).to include {"CERGY"}
     expect(perform).to include {"ARGENTEUIL"}
    end 

end