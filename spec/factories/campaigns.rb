# == Schema Information
#
# Table name: campaigns
#
#  id          :bigint           not null, primary key
#  description :string
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
FactoryBot.define do
  factory :campaign do
    title { "MyString" }
    description { "MyString" }
  end
end
