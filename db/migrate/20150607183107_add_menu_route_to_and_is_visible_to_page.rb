class AddMenuRouteToAndIsVisibleToPage < ActiveRecord::Migration
  def change
    add_column :pages, :menu_route, :string
    add_column :pages, :is_visible, :boolean
  end
end
