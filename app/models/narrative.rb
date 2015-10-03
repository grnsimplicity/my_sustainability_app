class Narrative < ActiveRecord::Base
  belongs_to :issue
  has_one :user
end
