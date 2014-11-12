require 'csv'

class Parser
  def self.parse(path)
  	result = Array.new
    CSV.foreach(path, :headers => true,
      :header_converters => :symbol, 
      :converters => :all) do |row|
  	  result << row[:nome]
  	end
  	return result
  end
end