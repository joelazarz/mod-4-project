class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :name, :github_link
  has_many :owned_projects
  has_many :projects
  has_many :tasks
  def projects
    self.object.projects.map do |project|
      {id: project.id,
      name: project.name,
      repo_link: project.repo_link,
      languages: project.languages,
      user_id: project.user_id,
      user: project.user}
    end
  end
  def owned_projects
    self.object.owned_projects.map do |project|
      {id: project.id,
      name: project.name,
      repo_link: project.repo_link,
      languages: project.languages,
      user_id: project.user_id,
      user: project.user}
    end
  end
end
