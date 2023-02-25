class InvoiceItem < ApplicationRecord
  belongs_to :item
  belongs_to :invoice
  
  enum status: ["pending", "packaged", "shipped"]
  
  scope :not_shipped, -> { where.not(status: 2).distinct.order(:invoice_id)}
end
