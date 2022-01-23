# == Schema Information
#
# Table name: uploads
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  title       :string           not null
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_uploads_on_title    (title)
#  index_uploads_on_user_id  (user_id)
#

FactoryBot.define do
  factory :upload do
    title { "MyString" }
    description { "MyString" }
  end
end
