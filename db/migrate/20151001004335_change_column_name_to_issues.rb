class ChangeColumnNameToIssues < ActiveRecord::Migration
  def change
    rename_column :issues, :issue_image, :image_url
  end
end
