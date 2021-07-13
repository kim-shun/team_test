def train(n)
  if n == 1
    "vse"
  elsif n == 2
    "mse"
  elsif n == 3
    "gse"
  elsif n == 4
    "exe"
  else
    "exea"
  end
end

require 'minitest/autorun'

class TrainTest < Minitest::Test
  def test_train
    assert_equal 'vse', train(1)
    assert_equal 'mse', train(2)
    assert_equal 'gse', train(3)
    assert_equal 'exe', train(4)
    assert_equal 'exea', train(100)
  end
end

# #出力結果
# Run options: --seed 37103

# # Running:

# .

# Finished in 0.000963s, 1038.4216 runs/s, 5192.1080 assertions/s.
# 1 runs, 5 assertions, 0 failures, 0 errors, 0 skips