# Goal: Understand how to append to a given data hash.
module DataProcessor3
  def self.process(input_hash)
    input_hash[:full_name] = "#{input_hash[:first_name]} #{input_hash[:last_name]}"
    if input_hash[:middle_name] 
      input_hash[:full_name] = "#{input_hash[:first_name]} #{input_hash[:middle_name]} #{input_hash[:last_name]}"
    end
    if input_hash[:salutation]
      input_hash[:full_name] = "#{input_hash[:salutation]} #{input_hash[:first_name]} #{input_hash[:last_name]}"
      if input_hash[:middle_name]
        input_hash[:full_name] = "#{input_hash[:salutation]} #{input_hash[:first_name]} #{input_hash[:middle_name]} #{input_hash[:last_name]}"
      end
    end
    input_hash
  end
end