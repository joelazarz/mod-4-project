class TaskSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :category, :project_id
end
