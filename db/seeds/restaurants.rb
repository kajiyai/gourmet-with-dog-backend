puts 'レストランを作成しています...'

begin
  20.times do |i|
    # 特定のオーナーを名前で検索
    owner = Owner.find_by(name: 'オーナー1')
    raise '指定されたオーナーが見つかりません。' if owner.nil?

    # 住所情報を検索
    address = Address.offset(rand(Address.count)).first

    # レストランデータを作成
    restaurant = Restaurant.find_or_create_by!(name: "レストラン#{i+1}") do |r|
      r.phone_number = "123-456-78#{i+1}"
      r.owner_id = owner.id
      r.address_id = address.id
    end

    if restaurant.persisted?
      # カテゴリーとアメニティをランダムに選択して紐づける
      restaurant.categories << Category.where(name: ['イタリアン', '和食', '寿司', 'フレンチ', 'ビストロ']).sample(2)
      restaurant.amenities << Amenity.where(name: ['Wi-Fi', '駐車場', '喫煙エリア', 'ペットフレンドリー', 'ドッグラン']).sample(2)
      puts "レストラン '#{restaurant.name}' の作成に成功しました。"
    else
      puts "レストラン '#{restaurant.name}' の作成に失敗しました。"
    end
  end
rescue => e
  puts "レストランの作成中にエラーが発生しました: #{e.message}"
end
