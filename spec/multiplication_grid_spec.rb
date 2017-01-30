require 'spec_helper'

describe MultiplicationGrid do
  describe './bin/find_my_primes 5' do
    it 'output an N+1 x N+1 grid of numbers' do
      # This is not a unit test.
      # MultiplicationGrid is very minimal so
      # it is difficult to meanfully test.
      expect(`./bin/find_n_primes 5`).to eq(
%Q(+----+----+----+----+----+-----+
|    | 2  | 3  | 5  | 7  | 11  |
| 2  | 4  | 6  | 10 | 14 | 22  |
| 3  | 6  | 9  | 15 | 21 | 33  |
| 5  | 10 | 15 | 25 | 35 | 55  |
| 7  | 14 | 21 | 35 | 49 | 77  |
| 11 | 22 | 33 | 55 | 77 | 121 |
+----+----+----+----+----+-----+
)
    )
    end
  end
end