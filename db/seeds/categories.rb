puts 'カテゴリーを作成しています...'

begin
  # メインカテゴリーのデータ作成
  main_categories = {
    'イタリアン' => ['パスタ'],
    '和食' => ['寿司'],
    'フレンチ' => ['ビストロ']
  }

  main_categories.each do |main_name, sub_names|
    main_category = MainCategory.find_or_create_by!(name: main_name)
    puts "#{main_category.name} (メインカテゴリー) が作成されました。" if main_category.persisted?

    # サブカテゴリーのデータ作成
    sub_names.each do |sub_name|
      sub_category = SubCategory.find_or_create_by!(name: sub_name, parent_id: main_category.id)
      puts "#{sub_category.name} (サブカテゴリー) が作成されました。" if sub_category.persisted?
    end
  end
rescue => e
  puts "カテゴリーの作成中にエラーが発生しました: #{e.message}"
end
