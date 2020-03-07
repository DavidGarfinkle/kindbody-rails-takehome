class Patient < ApplicationRecord
  validates :name, presence: true
  has_many :patient_notes
end
