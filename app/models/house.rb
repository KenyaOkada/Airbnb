class House < ApplicationRecord
  validates :house_name, presence: true, length: { in: 1..30, messages: "1~30文字の範囲で入力してください" }
  validates :house_description, presence: true
  validates :price, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :adress, presence: true, uniqueness: true
end
