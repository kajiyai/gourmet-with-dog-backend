puts '住所を作成しています...'

begin
  20.times do |i|
    address = Address.find_or_create_by!(
      street: "サンプル通り#{i+1}",
      city: "サンプル市#{i+1}",
      prefecture: "サンプル都道府県#{i+1}",
      postal_code: "123-00#{i+1}"
    )
    puts "住所 #{address.street}, #{address.city}, #{address.prefecture}, #{address.postal_code} が作成されました。" if address.persisted?
  end
rescue => e
  puts "住所の作成中にエラーが発生しました: #{e.message}"
end
