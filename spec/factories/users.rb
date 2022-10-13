FactoryBot.define do
  factory :user do
    name { "MyString" }
    email { "MyString" }
    username { "MyString" }
    birthday { "2022-10-13" }
    bio { "MyText" }
    password_digest { "MyString" }
  end
end
