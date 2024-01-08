puts 'ユーザーと犬のデータを作成しています...'

begin
  # 犬を登録していないユーザーの作成
  User.create!(email: 'user_no_dogs@example.com', password: 'password', password_confirmation: 'password')
  puts '犬を登録していないユーザーを作成しました。'

  # 1匹の犬を登録したユーザーの作成
  user_with_one_dog = User.create!(email: 'user_one_dog@example.com', password: 'password', password_confirmation: 'password')
  breed_one = DogBreed.find_by(name: '秋田犬')
  if breed_one
    user_with_one_dog.dogs.create!(
      name: 'Rex',
      breed_id: breed_one.id,
      size: 'medium',
      age: 3,
      allergy: false,
      image_url: 'http://example.com/image_rex.jpg'
    )
  else
    puts '秋田犬の犬種が見つかりませんでした。'
  end

  # 2匹の犬を登録したユーザーの作成
  user_with_two_dogs = User.create!(email: 'user_two_dogs@example.com', password: 'password', password_confirmation: 'password')
  breed_two = DogBreed.find_by(name: 'アラスカンマラミュート')
  breed_three = DogBreed.find_by(name: 'ラブラドールレトリーバー')
  if breed_two && breed_three
    user_with_two_dogs.dogs.create!(
      name: 'Buddy',
      breed_id: breed_two.id,
      size: 'large',
      age: 5,
      allergy: false,
      image_url: 'http://example.com/image_buddy.jpg'
    )
    user_with_two_dogs.dogs.create!(
      name: 'Lucy',
      breed_id: breed_three.id,
      size: 'small',
      age: 2,
      allergy: true,
      image_url: 'http://example.com/image_lucy.jpg'
    )
  else
    puts 'アラスカンマラミュートかラブラドールレトリーバーの犬種が見つかりませんでした。'
  end
rescue => e
  puts "エラーが発生しました: #{e.message}"
end
