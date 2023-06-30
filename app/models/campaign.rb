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
class Campaign < ApplicationRecord
  broadcasts_to ->(campaign) { :campaigns }, inserts_by: :prepend, target: "campaigns"
end
