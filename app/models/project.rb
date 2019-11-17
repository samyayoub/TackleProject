class Project < ApplicationRecord
    validates :due_date, presence: true
    belongs_to :user
    belongs_to :team
    has_many :events

    accepts_nested_attributes_for :team
end
