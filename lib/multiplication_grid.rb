module MultiplicationGrid
  def make_grid(array_of_numbers)
    rows = []
    rows << [' '] + array_of_numbers
    array_of_numbers.each do | p1 |
      row = [ p1 ]
      array_of_numbers.each do | p2 |
        row += [ p1 * p2]
      end
      rows << row
    end
    Terminal::Table.new :rows => rows
  end
end
