puts 'レストランを作成しています...'

begin
  # 特定のオーナーを名前で検索
  owner = Owner.find_by(name: 'オーナー1')

  # オーナーが見つからない場合のエラーハンドリング
  if owner.nil?
    raise '指定されたオーナーが見つかりません。'
  end

  # 住所情報を検索または作成
  address = Address.find_by!(
    street: '中央通り1-2-3',
    city: '東京市',
    prefecture: '東京都',
    postal_code: '100-0001'
  )

  # サンプルデータとしてレストランを作成
  restaurant = Restaurant.find_or_create_by!(name: 'レストラン名') do |r|
    r.phone_number = '123-456-7890'
    r.owner_id = owner.id
    r.address_id = address.id
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
