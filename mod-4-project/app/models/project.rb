class Project < ApplicationRecord
    has_many :user_projects
    has_many :users, through: :user_projects
    has_many :tasks
    belongs_to :user
end
