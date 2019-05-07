class CheckStartTime < ActiveModel::Validator
  def validate(record)
    if record.start_date != nil && record.start_date <= Time.now
      record.errors.add(:start_date, "must be in the future")
    else
      true
    end
  end
end

class CheckDuration < ActiveModel::Validator
  def validate(record)
    if record.duration % 5 == 0 && record.duration > 0
      true
    else
      record.errors.add(:duration, "must be a multiple of 5 and greater than 0")
    end
  end
end

class Event < ApplicationRecord
  has_many :attendances
  belongs_to :user, class_name: 'User', foreign_key: 'admin_id'

  validates :start_date, :duration, :title, :description, :price, :location, presence: {is: true, message: "%{attribute} has to be present"}
  validates_with CheckStartTime
  validates_with CheckDuration
  validates :title, length: {in: 5..140}
  validates :description, length: {in: 20..1000}
  validates :price, numericality: {greater_than_or_equal_to: 1, less_than_or_equal_to: 1000}
end
