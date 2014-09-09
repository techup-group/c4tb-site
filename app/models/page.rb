class Page < ActiveRecord::Base
  belongs_to :user

  rails_admin do
    edit do
      field :title, :string
      field :body, :ck_editor
    end

  end
end
