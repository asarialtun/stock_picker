def stock_picker(prices)
  length = prices.size
  positions= Array.new
  sorted_prices= prices.sort
  temp_prices = prices.dup #created a temporary copy of prices. loop below modifies it
  
  for i in 0..length-1 #create an array of the original position indexes of each value in sorted array
    positions[i] = temp_prices.index(sorted_prices[i])
    temp_prices[positions[i]]=0
  end #for
  
  result = Array.new
  b=-1
  while (-b < length-1)&&(result.size<2)
    for a in 0..length-1
      if positions[a] < positions[b] #check whether the smallest number has a smallar index then biggest number
        buy_price = sorted_prices[a]
        sell_price = sorted_prices[b]
        buy_index = prices.index(buy_price)
        sell_index = prices.rindex(sell_price)
        result << buy_index
        result << sell_index
      end #if
      break
    end #for
    b= b-1
  end #while
  print result.to_s+"\n"
  return result
end #stock_picker

test_array = [1,20,2,7,1,8,19,1]
stock_picker(test_array)
q