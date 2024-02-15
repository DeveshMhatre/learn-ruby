# frozen_string_literal: true

def stock_picker(prices)
  buy_index = 0
  sell_index = 1

  (1..prices.length - 2).to_a.each do |index|
    sell_index = index + 1 if prices[index + 1] > prices[sell_index]
    buy_index = index if prices[index] < prices[buy_index] && index < sell_index
  end

  [buy_index, sell_index]
end

p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
