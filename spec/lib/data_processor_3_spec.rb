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
    end
  end
end
