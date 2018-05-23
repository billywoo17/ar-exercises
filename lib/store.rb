class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality:{greater_than:0}
  validate :apparel

  def apparel
   if (!mens_apparel && !womens_apparel)
     errors.add(:womens_apparel, "both men and women apparel can not be false")
     errors.add(:mens_apparel, "both men and women apparel can not be false")
   end
 end

end
