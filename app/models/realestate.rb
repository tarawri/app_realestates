class Realestate < ApplicationRecord
    belongs_to :user
    has_many :commits, dependent: :destroy
end
