# == Schema Information
#
# Table name: issues
#
#  id         :integer          not null, primary key
#  topic      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  image_url  :string
#

class Issue < ActiveRecord::Base
  has_many :narratives
  has_many :users, :through => :narratives
  accepts_nested_attributes_for :narratives
end
