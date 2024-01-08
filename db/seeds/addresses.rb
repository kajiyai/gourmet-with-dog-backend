puts '住所を作成しています...'

begin
  sample_addresses = [
    { street: '中央通り1-2-3', city: '東京市', prefecture: '東京都', postal_code: '100-0001' },
    { street: '桜町4-5-6', city: '横浜市', prefecture: '神奈川県', postal_code: '220-0002' },
    { street: '花園7-8-9', city: '大阪市', prefecture: '大阪府', postal_code: '540-0003' }
  ]

  # 住所データの作成
  sample_addresses.each do |address_attrs|
    address = Address.find_or_create_by!(address_attrs)
    if address.persisted?
      puts "住所 #{address.street}, #{address.city}, #{address.prefecture}, #{address.postal_code} が作成されました。"
    else
      puts "住所の作成に失敗しました。"
    end
  end
rescue => e
  puts "住所の作成中にエラーが発生しました: #{e.message}"
end
