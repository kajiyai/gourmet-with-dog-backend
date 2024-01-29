puts 'オーナーを作成しています...'

begin
  owners = [
    { email: 'owner1@example.com', name: 'オーナー1', password: 'password' },
    { email: 'owner2@example.com', name: 'オーナー2', password: 'password' },
    { email: 'owner3@example.com', name: 'オーナー3', password: 'password' }
  ]

  owners.each do |owner_attrs|
    owner = Owner.find_or_create_by!(email: owner_attrs[:email]) do |o|
      o.name = owner_attrs[:name]
      o.password = owner_attrs[:password]
      o.password_confirmation = owner_attrs[:password]
    end

    if owner.persisted?
      puts "#{owner.name} の作成に成功しました。"
    else
      puts "#{owner.name} の作成に失敗しました。"
    end
  end

rescue => e
  puts "オーナーの作成中にエラーが発生しました: #{e.message}"
end
