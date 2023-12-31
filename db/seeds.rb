puts 'シード処理を開始します...'

# 読み込むシードファイルのリスト
seed_files = ['create_admin', 'dog_breeds', 'create_users_and_dogs']

# リストに沿って各シードファイルを読み込む
seed_files.each do |seed_file|
  puts "#{seed_file}を読み込んでいます..."
  load Rails.root.join("db/seeds/#{seed_file}.rb")
  puts "#{seed_file}の読み込みが成功しました。"
end

puts 'シード処理が完了しました。'
