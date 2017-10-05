names_of_tickers = { 

    :GM => "General Motors",
    :GE => "General Electric",
    :CAT => "Caterpillar", 
    :EK => "Eastman Kodak",
    :AB => "Alliancebernstein Holding LP",
    :AED => "Aegon N.V. Perp Cap Secs",
    :BAC => "Bank of America Corp",
    :BAN => "Bank of California Inc Pref Share Series",
    :BKHU => "Black Hills Corp",
    :BKS => "Barnes & Noble",
    :BWP => "Boardwalk Pipeline Partners LP",
    :BZH => "Beazer Homes USA",
    :C => "Citigroup Inc Prfd C",
    :CACI => "Caci International",
    :CBD => "Companhia Brasileira De Distribuicao",
    :CBPX => "Continental Building Products",
    :CORR => "Corenergy Infrastructure Trust Inc"

}

 purchases = [ 

    [ :GE, 100, "10-sep-2001", 48 ],
    [ :CAT, 20, "1-apr-1999", 24 ],
    [ :BKHU, 200, "1-apr-1998", 56 ],
    [ :BZH, 200, "2-jun-1998", 22 ],
    [ :CBPX, 45, "1-jul-1998", 56 ],
    [ :CORR, 200, "23-aug-1998", 44 ],
    [ :CORR, 50, "1-sep-1998", 85 ],
    [ :CBPX, 200, "14-jul-1998", 56 ],
    [ :BKS, 90, "12-nov-1998", 16 ]

]


# produce a report of purchases
#
#
#
#
#

def print_report(purchase_array, name_hash)
    
    purchase_array.each do |purchase| 

        date = purchase[2]
        company_name = name_hash[purchase[0]]
        total_cost = purchase[1] * purchase[3]

        puts "On #{date} you purchased #{company_name} stock for $#{total_cost}"

        end 

end


# build a hash where keys are names of companies and values are 
# purchase histories associated with those companies
# 
# args: array, hash
# returns: hash
# 
# example: 
# 
#   {
#   
#   :GE => [[:GE, 100, "10-sep-2001", 48]], 
#   :CAT => [[:CAT, 20, "1-apr-1999", 24]], 
#   :BKHU =>[[:BKHU, 200, "1-apr-1998", 56]], 
#   :BZH => [[:BZH, 200, "2-jun-1998", 22]], 
#   :CBPX =>[[:CBPX, 45, "1-jul-1998", 56], [:CBPX, 200, "14-jul-1998", 56]], 
#   :CORR =>[[:CORR, 200, "23-aug-1998", 44], [:CORR, 50, "1-sep-1998", 85]], 
#   :BKS =>[[:BKS, 90, "12-nov-1998", 16]]
#   
#   }
#   
def store_purchase_history(purchase_array, name_hash)

    # reduce the array's values into a hash
    purchase_array.reduce({}) do |purchase_hash, purchase|

        #storing the namestring via lookup in the name_hash
        ticker = purchase[0]
        
        # if purchase_hash already has a key by this name,
        # push this purchase block (array) to it's value.
        # 
        # if not, name it and assigned an array value,
        # then push this purchase block (array) into it
        if purchase_hash[ticker]
           purchase_hash[ticker] << purchase

        else  purchase_hash[ticker] = []
              purchase_hash[ticker] << purchase

        end

        purchase_hash

    end
end

 
puts "******** Investment Data *********"
puts
puts store_purchase_history(purchases, names_of_tickers)
puts
puts "***********************************"
puts
puts "******* Summary of Totals *********"
puts
print_report(purchases, names_of_tickers)
puts
puts "***********************************"
puts




