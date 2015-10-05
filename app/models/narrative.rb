# == Schema Information
#
# Table name: narratives
#
#  id          :integer          not null, primary key
#  title       :string
#  description :string
#  text        :string
#  result      :text
#  people      :integer
#  location    :integer
#  templates   :string
#  image_url   :string
#  issue_id    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  topic       :string
#

class Narrative < ActiveRecord::Base
  belongs_to :issue
  validates_associated :issue
  has_one :user
  accepts_nested_attributes_for :issue

  validates :title, length: { maximum: 50, too_long: "%{count} characters is the maximum allowed" }
  validates :description, length: { maximum: 200, too_long: "%{count} characters is the maximum allowed" }
  validates :title, length: { maximum: 200, too_long: "%{count} characters is the maximum allowed" }
  validates :location, length: { maximum: 5, too_long: "%{count} characters is the maximum allowed" }
end
