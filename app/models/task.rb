class Task < ApplicationRecord
    belongs_to :category
  
    validates :status, inclusion: { in: %w[incomplete complete] }
    after_initialize :set_default_status, if: :new_record?
  
    private
  
    def set_default_status
      self.status ||= 'incomplete'
    end
  end
  