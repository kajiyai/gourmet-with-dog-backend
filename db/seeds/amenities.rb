puts 'アメニティを作成しています...'

begin
  # 一般アメニティのデータ作成
  ['Wi-Fi', '駐車場', '喫煙エリア'].each do |amenity_name|
    amenity = GeneralAmenity.find_or_create_by!(name: amenity_name)
    puts "#{amenity.name} (一般アメニティ) が作成されました。" if amenity.persisted?
  end

  # ペットフレンドリーアメニティのデータ作成
  ['ペットフレンドリー', 'ドッグラン'].each do |amenity_name|
    amenity = PetFriendlyAmenity.find_or_create_by!(name: amenity_name)
    puts "#{amenity.name} (ペットフレンドリーアメニティ) が作成されました。" if amenity.persisted?
  end
rescue => e
  puts "アメニティの作成中にエラーが発生しました: #{e.message}"
end
