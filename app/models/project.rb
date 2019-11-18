class Project < ApplicationRecord
    validates :due_date, presence: true
    belongs_to :user
    has_many :events

end
