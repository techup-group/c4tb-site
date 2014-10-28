json.array!(@projects) do |project|
  json.extract! project, :id, :name, :description, :link_url, :code_url, :type, :categories
  json.url project_url(project, format: :json)
end
