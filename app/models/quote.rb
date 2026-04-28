class Quote < ApplicationRecord
    belongs_to :user
    belongs_to :company

    validates :name, presence: true

    validates :user, presence: true

    broadcasts_to ->(quote) { "quotes" }, inserts_by: :prepend

    
end
