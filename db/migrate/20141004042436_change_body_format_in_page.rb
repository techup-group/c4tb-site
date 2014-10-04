class ChangeBodyFormatInPage < ActiveRecord::Migration
  def up
    change_column :pages, :body, :text, limit: nil
  end
  def down
    change_column :pages, :body, :string
  end
end
