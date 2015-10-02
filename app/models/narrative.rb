class Narrative < ActiveRecord::Base
  belongs_to :issues
  has_one :user
end
