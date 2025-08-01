class Notebook < ApplicationRecord
  after_create :set_status_available

  validates :equipment_identifier, :serial_number, :asset_number,
            :brand, :model, :purchase_date,
            presence: true

  validates :equipment_identifier, :serial_number, :asset_number,
            uniqueness: true

  private

  def set_status_available
    update(status: "available")
  end

end
