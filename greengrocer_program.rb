products = [
  { name: 'トマト', price: 100 },
  { name: 'きゅうり', price: 200 },
  { name: '玉ねぎ', price: 300 },
  { name: 'なす', price: 400 }
]
puts 'いらっしゃいませ!商品を選んでください。'
products.each.with_index(1) do |product, i|
  puts "#{i}.#{product[:name]}(#{product[:price]}円)"
end

while true
  print '商品の番号を選択 > '
  select_product_num = gets.to_i
  break if (1..4).include?(select_product_num)

  puts '1〜4の番号を入力してください。'
end
chosen_product = products[select_product_num - 1]

puts "#{chosen_product[:name]}ですね。何個買いますか？"
while true
  print '個数を入力 > '
  quantity_of_product = gets.to_i
  break if quantity_of_product >= 1

  puts '1個以上選んでください。'
end

total_price = chosen_product[:price] * quantity_of_product
if quantity_of_product >= 5
  puts '5個以上なので10％割引となります！'
  total_price *= 0.9
end
puts "合計金額は#{total_price.floor}円です。"
puts 'お買い上げありがとうございました！'
