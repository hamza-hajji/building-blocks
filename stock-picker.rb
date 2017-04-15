def stock_picker(stock_prices)
  pairs = []
  profits = []
  best_profit = nil

  # getting all the possible pairs
  stock_prices.each do |price|
    idx = stock_prices.index price # index of current element
    end_of_arr = idx == stock_prices.length
    rem = stock_prices[(end_of_arr ? (idx + 1): idx)..-1] # remaining of the array
    pairs << [idx, stock_prices.index(rem.max)]
  end

  # calculating the pair that returns the best profit

  pairs.each do |pair|
    profit = stock_prices[pair[1]] - stock_prices[pair[0]]
    profits << profit
  end

  pairs.each do |pair|
    if profits.max == stock_prices[pair[1]] - stock_prices[pair[0]]
      best_profit = pair
    end
  end

  return best_profit
end