class Style < ActiveRecord::Base
  validates :name,:image,:material_amount, presence: true
  validates :name, length: { minimum: 3, maximum:50 }
  validates :material_amount, numericality: { greater_than:0, less_than:5 }
  validates :image, format: {with:  /^.*\.(png|jpg)$/, message: "allows only png or jpg extension" }
  
end
