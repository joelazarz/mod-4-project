class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :repo_link, :languages, :user_id
  has_many :tasks
end
