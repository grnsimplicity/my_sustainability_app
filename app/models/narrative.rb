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
  has_one :user
end
