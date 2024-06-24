RSpec.describe DataProcessor1 do
  describe "#processed_hash" do
    it "returns the first name Sean" do
      expect(
        DataProcessor1.process(
          {
            first_name: "Trey"
          }
        )
      ).to eq(
        {
          first_name: "Sean"
        }
      )
    end
  end
end
