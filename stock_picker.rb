
def stock_picker(prices)
  length = prices.size
  positions= Array.new
  sorted_prices= prices.sort
  temp_prices = prices.dup #created a temporary copy of prices. loop below modifies it
  
  for i in 0..length-1
    positions[i] = temp_prices.index(sorted_prices[i])
    temp_prices[positions[i]]=0
  end #for
  
    result = Array.new
    b=-1
    while -b < length
      for a in 0..length-1
        if positions[a] < positions[b] #b starts at -1, a at 0
          buy_price = sorted_prices[a]
          sell_price = sorted_prices[b]
          buy_index = prices.index(buy_price)
          sell_index = prices.index(sell_price)
          result << buy_index
          result << sell_index
          break
        end #if
      end #for
      b= b-1
    end #while
    puts result[0..1]
    return result[0..1]
end #stock_picker


test_array = [20,5,2,7,1,8,6,3]
stock_picker(test_array)
