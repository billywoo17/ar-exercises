class Employee < ActiveRecord::Base
  after_create :generate_random_string
  belongs_to :store
  validates :first_name, :last_name, presence: true
  validates :hourly_rate, numericality: {less_than: 200, greater_than:40}
  validates_associated :store

  private
  def generate_random_string
    @password = (0...6).map { ('a'..'z').to_a[rand(26)] }.join
    self.password = @password
    self.save!
  end
end
