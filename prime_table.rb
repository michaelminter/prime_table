require 'optparse'

require_relative './lib/prime_data.rb'
require_relative './lib/prime_table.rb'

options = {}
OptionParser.new do |opts|
  opts.banner = "Usage: prime_table.rb [options]"

  opts.on("-r", "--rows=COUNT", "Number of rows") do |r|
    options[:rows] = r
  end

  opts.on("-c", "--columns=COUNT", "Number of columns") do |c|
    options[:columns] = c
  end

  opts.on("-o", "--operator=OPERATOR", "Mathematical operator for row-column matches") do |o|
    options[:operator] = o
  end
end.parse!

data = PrimeData.new(options).tabulate
puts PrimeTable.new(data).build
