def stock_picker(prices)
  max_profit = 0
  buy_day_index = 0
  sell_day_index = 0

  prices.each_with_index do |buy_price, buy_day|
    prices.each_with_index do |sell_price, sell_day|
      next unless sell_day > buy_day

      profit = sell_price - buy_price
      next unless profit > max_profit

      max_profit = profit
      buy_day_index = buy_day
      sell_day_index = sell_day
    end
  end

  [buy_day_index, sell_day_index]
end
