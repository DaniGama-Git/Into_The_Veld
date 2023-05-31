class Booking < ApplicationRecord
  validates :status, inclusion: { in: %w(new unresolved rejected completed) }
  after_initialize :set_default_status, if: :new_record?
  belongs_to :car
  belongs_to :user

  def set_default_status
    self.status ||= 'new'
  end
end
