puts 'ランダムなレビューデータを100件作成しています...'

# レビューのサンプルコメント
sample_comments = [
  '素晴らしい食事とサービスでした！',
  'とても楽しい時間を過ごせました。',
  '味は良かったですが、サービスに少し改善の余地があります。',
  '期待以上でした！',
  '食事は美味しかったですが、店内が少し騒がしかったです。',
  'リーズナブルな価格で満足です。',
  '次回も訪れたいと思います。',
  '料理は良かったのですが、待ち時間が長かったです。',
  '素敵な内装と雰囲気でした。',
  '家族で楽しい食事ができました。'
]

begin
  100.times do
    # ランダムなユーザーとレストランを選択
    user = User.order('RANDOM()').first
    restaurant = Restaurant.order('RANDOM()').first

    # ランダムな評価とコメント、訪問日を設定
    evaluation = rand(1..5)
    comment = sample_comments.sample
    visited_at = rand(1..365).days.ago

    # レビューデータを作成
    review = user.reviews.create!(
      restaurant_id: restaurant.id,
      comment: comment,
      evaluation: evaluation,
      visited_at: visited_at
    )

    puts "レビューID '#{review.id}' の作成に成功しました。"
  end
rescue => e
  puts "レビューの作成中にエラーが発生しました: #{e.message}"
end

puts 'レビューデータの作成が完了しました。'
