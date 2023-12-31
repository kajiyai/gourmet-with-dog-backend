puts 'ユーザーと犬のデータを作成しています...'

# 犬を登録していないユーザーの作成
no_dog_user = User.create!(name: 'No Dog User', email: 'user_no_dogs@example.com', password: 'password', password_confirmation: 'password')
puts "犬を登録していないユーザーを作成しました: #{no_dog_user.email}"

# 1匹の犬を登録したユーザーの作成
user_with_one_dog = User.create!(name: 'One Dog User', email: 'user_one_dog@example.com', password: 'password', password_confirmation: 'password')
puts "1匹の犬を登録したユーザーを作成しました: #{user_with_one_dog.email}"
breed_one = DogBreed.find_by(name: '秋田犬')
if breed_one
  dog_one = user_with_one_dog.dogs.create!(
    name: 'Rex',
    breed_id: breed_one.id,
    size: 'medium',
    age: 3,
    allergy: false,
    image_url: 'http://example.com/image_rex.jpg'
  )
  puts "犬のデータが正常に作成されました: #{dog_one.name}"
else
  puts "秋田犬の犬種が見つかりません。"
end

# 2匹の犬を登録したユーザーの作成
user_with_two_dogs = User.create!(name: 'Two Dogs User', email: 'user_two_dogs@example.com', password: 'password', password_confirmation: 'password')
puts "2匹の犬を登録したユーザーを作成しました: #{user_with_two_dogs.email}"
breed_two = DogBreed.find_by(name: 'アラスカンマラミュート')
breed_three = DogBreed.find_by(name: 'ラブラドールレトリーバー')
if breed_two && breed_three
  dog_two = user_with_two_dogs.dogs.create!(
    name: 'Buddy',
    breed_id: breed_two.id,
    size: 'large',
    age: 5,
    allergy: false,
    image_url: 'http://example.com/image_buddy.jpg'
  )
  dog_three = user_with_two_dogs.dogs.create!(
    name: 'Lucy',
    breed_id: breed_three.id,
    size: 'small',
    age: 2,
    allergy: true,
    image_url: 'http://example.com/image_lucy.jpg'
  )
  puts "犬のデータが正常に作成されました: #{dog_two.name}, #{dog_three.name}"
else
  puts "必要な犬種が見つかりません。"
end

puts 'ユーザーと犬のデータの作成が完了しました。'
