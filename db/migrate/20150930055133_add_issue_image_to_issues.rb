class AddIssueImageToIssues < ActiveRecord::Migration
  def change
    add_column :issues, :issue_image, :string
  end
end
