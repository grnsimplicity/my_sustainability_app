class AddTopicColumnToNarratives < ActiveRecord::Migration
  def change
    add_column :narratives, :topic, :string
  end
end
