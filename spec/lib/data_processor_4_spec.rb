RSpec.describe DataProcessor4 do
  describe ".process" do
    it "adds full_name to a bunch of records" do
      expect(
        DataProcessor3.process(
          [
            {
              first_name: "Sean",
              last_name: "Warren"
            },
            {
              first_name: "Trey",
              last_name: "Pendragon"
            }
          ]
        )
      ).to eq(
        [
          {
            first_name: "Sean",
            last_name: "Warren",
            full_name: "Sean Warren"
          },
          {
            first_name: "Trey",
            last_name: "Pendragon",
            full_name: "Trey Pendragon"
          }
        ]
      )
    end
  end
end
