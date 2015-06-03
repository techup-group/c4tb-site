class ChangeBodyFormatInPost < ActiveRecord::Migration
  def up
    change_column :posts, :body, :text, limit: nil
  end
  def down
    change_column :posts, :body, :string
  end
end
