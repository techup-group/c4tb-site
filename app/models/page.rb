class Page < ActiveRecord::Base
  belongs_to :user

  rails_admin do
    edit do
      field :title, :string
      field :path
      field :layout
      field :required, :boolean
      field :is_visible, :boolean
      field :menu_route, :string
      field :user
      field :body, :ck_editor

    end

  end
end
