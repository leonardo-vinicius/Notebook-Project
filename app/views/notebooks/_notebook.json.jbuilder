json.extract! notebook, :id, :equipment_identifier, :serial_number, :asset_number, :manufacture_date, :description, :brand, :model, :purchase_date, :status, :created_at, :updated_at
json.url notebook_url(notebook, format: :json)
