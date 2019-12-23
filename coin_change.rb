#what is the minimum number of coins that can be used to make the given amount
###CONDITIONS
#how many coins can we use to make zero? none 
#if there are no coins but an amount then the problem cant be solved
#if the amount given is less than the max_coin in the set, ignore the max_coin and use results from the prev row
###METHOD TO SOLVE
#  - use the max_coin:
#    current amount - max_coin in the set = result
#    result is used to locate current_column and amount in current _column
#    add current_column_amount and the max_coin as 1(e.g current_column_amount = 1 , max_coin = 4 which is 1 four coin so 1 + 1 = 2 coins )
# - solve the problem without using the max_coin in the set

coins = [1,3,4]
amount = 6 
def coin_change(coins, amount)

end