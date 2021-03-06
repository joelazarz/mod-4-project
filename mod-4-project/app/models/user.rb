class User < ApplicationRecord
    has_many :user_projects
    has_many :user_tasks
    has_many :tasks, through: :user_tasks
    has_many :projects, through: :user_projects
    has_many :owned_projects, :class_name => 'Project', :foreign_key => 'user_id'
    has_secure_password
end
