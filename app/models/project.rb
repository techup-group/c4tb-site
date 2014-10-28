class Project < ActiveRecord::Base
  alias_attribute :type, :project_type
end
