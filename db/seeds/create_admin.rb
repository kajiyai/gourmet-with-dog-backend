puts '管理者ユーザーを作成しています...'

begin
  admin_user = Admin.find_or_create_by!(email: "admin@example.com") do |admin|
    admin.name = "管理者"
    admin.password = "password"
    admin.password_confirmation = "password"
  end

  if admin_user.persisted?
    puts '管理者ユーザーの作成に成功しました。'
  else
    puts '管理者ユーザーの作成に失敗しました。'
  end
rescue => e
  puts "管理者ユーザーの作成中にエラーが発生しました: #{e.message}"
end
