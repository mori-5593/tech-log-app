FactoryBot.define do
  factory :user do
    nickname { 'テスト太郎' }
    sequence :email do |_n| # メールを自動的に連番、数字を少しずつ変えて設定することができる
      'test#(n)@example.com' # test1@~~ test2@~~ というように作成してくれる
    end
    password { '111111' }
    password_confirmation { '111111' } # 2回入力してミスを防ぐもの
  end
end
