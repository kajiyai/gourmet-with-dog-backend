# 管理者ユーザーの作成
User.create!(
  name: "管理者",
  email: "admin@example.com",
  password: "password",
  "password_confirmation": "password",
  admin: true
)
