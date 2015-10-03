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

require 'test_helper'

class NarrativeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
