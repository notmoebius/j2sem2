def day_trader(trade)
    day_share = 0
    day_sale = 0
    gain_trade = []

    #identifier la valeur max
    max_share = trade.max(2)
    min_buy = trade.min
    if max_share[0] = trade[0]
        day_share = max_share[1]
    else
        day_share = max_share[0]
    end
    day_sale = trade.index(day_share)
    gain_trade << min_buy << day_sale 
    return gain_trade

end