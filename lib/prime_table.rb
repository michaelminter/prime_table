require 'terminal-table'

class PrimeTable
  def initialize(data)
    @data = data
  end

  attr_accessor :data

  def build
    Terminal::Table.new do |t|
      data.each do |d|
        t.add_row d
      end
      t.style = { all_separators: true }
    end
  end
end
