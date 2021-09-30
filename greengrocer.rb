class Greengrocer
  attr_reader :products

  def initialize(product_params)
    @products = []
    register_product(product_params)
  end

  def register_product(product_params)
    product_params.each do |param|
      @products << Product.new(param)
    end
  end

  def disp_products
    puts 'いらっしゃいませ!商品を選んでください。'
    @products.each do |product|
      puts "#{product.id}.#{product.name}(¥#{product.price})"
    end
  end

  def ask_quantity(chosen_product)
    puts "#{chosen_product.name}ですね。何個買いますか？"
  end

  def calculate_charges(user)
    total_price = user.chosen_product.price * user.quantity_of_product
    if user.quantity_of_product >= 5
      puts '5個以上なので10％割引となります！'
      total_price *= 0.9
    end
    puts "合計金額は#{total_price.floor}円です。"
    puts 'お買い上げありがとうございました！'
  end
end
