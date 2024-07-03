RSpec.describe DataProcessor2 do
  describe "#processed_hash" do
    it "capitalizes a first name" do
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
      # Capitalize Anna if given
      expect(
        DataProcessor2.process(
          {
            first_name: "Anna"
          }
        )
      ).to eq(
        {
          first_name: "ANNA"
        }
      )
    end
    it "capitalizes first and last name" do
      # first and last name given capitalize both names
      expect(
        DataProcessor2.process(
          {
            first_name: "Eliot", last_name: "Jordan"
          }
        )
      ).to eq(
        {
          first_name: "ELIOT", last_name: "JORDAN"
        }
      )
    end
    it "changes last name from bats to dog" do
      # change last name from bats to dog
      expect(
        DataProcessor2.process(
          {
            last_name: "bats"
          }
        )
      ).to eq(
        {
          last_name: "DOG"
        }
      )
    end
  end
end
