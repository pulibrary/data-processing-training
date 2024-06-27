# Goal: Understand how to append to a given data hash.
module DataProcessor3
  def self.process(input_hash)
    input_hash[:full_name] = input_hash[:first_name],
    input_hash
  end
end
