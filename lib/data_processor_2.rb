# Goal: Understand how to take a hash and convert it to another hash.
module DataProcessor2
  def self.process(input_hash)
    if input_hash[:first_name] 
   input_hash[:first_name] = input_hash[:first_name].upcase 
    end
   if input_hash[:last_name]
   input_hash[:last_name] = input_hash[:last_name].upcase 
   end
   if input_hash[:last_name] == "BATS"
  input_hash[:last_name] = "DOG"
   end
   input_hash 
  end
end
