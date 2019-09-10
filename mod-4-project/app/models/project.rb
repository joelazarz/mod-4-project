class Project < ApplicationRecord
    has_many :user_projects, dependent: :destroy
    has_many :users, through: :user_projects, dependent: :destroy
    has_many :tasks, dependent: :destroy
    belongs_to :user
end
