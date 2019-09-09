class TaskSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :category, :project_id
  has_many :users
end
