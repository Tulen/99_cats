class CatRentalRequest < ApplicationRecord
  STATUS = ["APPROVED", "PENDING", "DENIED"].freeze

  validates :cat_id, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :status, presence: true

  validates :status, inclusion: { in: STATUS, message: "Invalid Status" }

  belongs_to :cat,
    primary_key: :id,
    foreign_key: :cat_id,
    class_name: :Cat

  def overlapping_requests
    # CatRentalRequest.all
    CatRentalRequest.where(cat_id: self.cat_id).where.not(id: self.id)
  end
end
