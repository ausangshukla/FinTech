class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  has_many :documents, as: :owner, dependent: :destroy
  has_many :interests, dependent: :destroy

  def name
    self.first_name + " " + self.last_name
  end
end
