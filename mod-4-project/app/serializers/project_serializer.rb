class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :repo_link, :languages, :user_id
  has_many :tasks
  has_many :users
  belongs_to :user
  def tasks
    self.object.tasks.map do |task|
      {id: task.id,
      name: task.name,
      description: task.description,
      category: task.category,
      project_id: task.project_id,
      users: task.users}
    end
  end
end
