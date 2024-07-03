RSpec.describe DataProcessor3 do
  describe "#processed_hash" do
    it "creates a full_name key" do
      expect(
        DataProcessor3.process(
          {
            first_name: "Sean",
            last_name: "Warren"
          }
        )
      ).to eq(
        {
          first_name: "Sean",
          last_name: "Warren",
          full_name: "Sean Warren"
        }
      )

      expect(
        DataProcessor3.process(
          {
            first_name: "Trey",
            last_name: "Pendragon"
          }
        )
      ).to eq(
        {
          first_name: "Trey",
          last_name: "Pendragon",
          full_name: "Trey Pendragon"
        }
      )
      # if I have a salutation it should be at the begining of the full name,
      # if I don't have a salutation it should not be there
      expect(
        DataProcessor3.process(
          {
            salutation: "Dr",
            first_name: "Trey",
            last_name: "Pendragon"
          }
        )
      ).to eq(
        {
          salutation: "Dr",
          first_name: "Trey",
          last_name: "Pendragon",
          full_name: "Dr Trey Pendragon"
        }
      )
      # add a middle name 
      expect(
        DataProcessor3.process(
          {
            salutation: "Dr",
            first_name: "Trey",
            middle_name: "cats",
            last_name: "Pendragon"
          }
        )
      ).to eq(
        {
          salutation: "Dr",
          first_name: "Trey",
          middle_name: "cats",
          last_name: "Pendragon",
          full_name: "Dr Trey cats Pendragon"
        }
      )
      # full name to equal first middle and last name
      expect(
        DataProcessor3.process(
          {
            first_name: "Trey",
            middle_name: "cats",
            last_name: "Pendragon"
          }
        )
      ).to eq(
        {
          first_name: "Trey",
          middle_name: "cats",
          last_name: "Pendragon",
          full_name: "Trey cats Pendragon"
        }
      )
    end
  end
end
