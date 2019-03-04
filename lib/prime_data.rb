require_relative './prime'

class PrimeData
  def initialize(rows: 10, columns: 10, operator: :*)
    @row_primes = Prime.first(rows.to_i)
    @column_primes = Prime.first(columns.to_i)
    @operator = operator.to_sym
  end

  attr_reader :row_primes, :column_primes, :operator

  def generate
    result = []

    row_primes.each do |x|
      result << column_primes.map{ |y| x.public_send(operator, y) }
    end

    result
  end

  def tabulate
    data = generate
    result = [prepend_array(nil, column_primes)]

    data.each_with_index do |row, i|
      result << prepend_array(row_primes[i], row)
    end

    result
  end

  private

  def prepend_array(object, array)
    [object] + array
  end
end
