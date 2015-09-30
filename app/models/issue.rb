# == Schema Information
#
# Table name: issues
#
#  id         :integer          not null, primary key
#  topic      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Issue < ActiveRecord::Base
end
