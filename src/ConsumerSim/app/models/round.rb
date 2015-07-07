class Round

  def play

    Consumer.all.each do |c|
      # get next items to buy
      list = c.shopping_list.list

      list.each do |p_id, demand|
        list[p_id] = demand - 1
      end

      to_buy_list = list.select {|p_id, demand| calculate_probability(demand) }

      to_buy_list.keys.each do |product_id|
        product = Product.find(product_id)

        # TODO: Check budget
        c.budget -= product.price
        puts "Consumer #{c.id} bought #{product.name} for #{product.price} dollars"
        puts "Budget left: #{c.budget}"

        # reset product demand for this consumer
        list[product_id] = product.demand
      end

      c.save

    end
  end

  def multiple_rounds num
    num.times do |round_num|
      play
    end
  end

  private

  def calculate_probability x
    # linear growth
    # factor 4.5 -> 0% to 90%    
    y = 4.5*(10-x)
    prob = rand(101)

    return prob <= y
  end

end