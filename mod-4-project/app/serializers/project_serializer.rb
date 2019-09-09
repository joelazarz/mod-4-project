class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :repo_link, :languages, :user_id
  has_many :tasks
end
