RSpec.describe DataProcessor2 do
  describe "#processed_hash" do
    it "capitalizes whatever name it's given" do
      # Capitalize Sean if given
      expect(
        DataProcessor2.process(
          {
            first_name: "Sean"
          }
        )
      ).to eq(
        {
          first_name: "SEAN"
        }
      )
      # Capitalize Trey if given
      expect(
        DataProcessor2.process(
          {
            first_name: "Trey"
          }
        )
      ).to eq(
        {
          first_name: "TREY"
        }
      )
    end
  end
end
