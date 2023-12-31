puts '管理者ユーザーを作成しています...'

begin
  admin_user = User.find_or_create_by!(email: "admin@example.com") do |user|
    user.name = "管理者"
    user.password = "password"
    user.password_confirmation = "password"
    user.admin = true
  end

  if admin_user.persisted?
    puts '管理者ユーザーの作成に成功しました。'
  else
    puts '管理者ユーザーの作成に失敗しました。'
  end
rescue => e
  puts "管理者ユーザーの作成中にエラーが発生しました: #{e.message}"
end
