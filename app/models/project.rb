class Project < ApplicationRecord
    validates :due_date, presence: true
    belongs_to :user
    has_many :events

    accept_nested_attributes_for :team
end
