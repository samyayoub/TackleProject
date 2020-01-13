class Project < ApplicationRecord
    validates :due_date, presence: true
    belongs_to :user, required: false
    belongs_to :team, required: false
    has_many :events

    accepts_nested_attributes_for :team
end
