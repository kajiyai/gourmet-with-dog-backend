puts 'シード処理を開始します...'

# シードファイルを読み込む
['create_admin', 'dog_breeds'].each do |seed|
  puts "#{seed}を読み込んでいます..."
  load Rails.root.join("db/seeds/#{seed}.rb")
  puts "#{seed}の読み込みが成功しました。"
end

puts 'シード処理が完了しました。'
