puts 'レストランを作成しています...'

begin
  # サンプルデータとしてレストランを作成
  restaurant = Restaurant.find_or_create_by!(name: 'レストラン名') do |r|
    r.phone_number = '123-456-7890'
    r.owner_id = Owner.first.id
  end

  if restaurant.persisted?
    restaurant.categories << Category.where(name: ['イタリアン', '和食']).to_a
    restaurant.amenities << Amenity.where(name: ['Wi-Fi', 'ペットフレンドリー']).to_a
    puts "レストラン '#{restaurant.name}' の作成に成功しました。"
  else
    puts "レストラン '#{restaurant.name}' の作成に失敗しました。"
  end
rescue => e
  puts "レストランの作成中にエラーが発生しました: #{e.message}"
end
