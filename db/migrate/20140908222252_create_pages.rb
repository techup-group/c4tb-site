class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.string :body
      t.references :user

      t.timestamps
    end
  end
end
