class AddRequiredAndLayoutAndPathToPages < ActiveRecord::Migration
  def change
    add_column :pages, :required, :boolean, default: false
    add_column :pages, :layout, :string, default: 'application'
    add_column :pages, :path, :string
  end
end
