class Notebook < ApplicationRecord
  after_create :set_status_available

  validates :equipment_identifier, :serial_number, :asset_number,
            :brand, :model, :purchase_date,
            presence: true

  validates :equipment_identifier, :serial_number, :asset_number,
            uniqueness: true

  enum status: {
    available: "available",
    borrowed: "borrowed",
    unavailable: "unavailable"
  }

  private

  def set_status_available
    update(status: "Available")
  end

end
