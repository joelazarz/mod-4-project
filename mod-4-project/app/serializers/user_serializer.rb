class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :name, :github_link
  has_many :owned_projects
  has_many :projects
  has_many :tasks
end
