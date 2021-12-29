class Interest < ApplicationRecord

  SIDES = ["Buy", "Sell"]
  TYPES = ["Common", "Preferred", "Both"]
  belongs_to :user
  belongs_to :company
end
