class Room < ActiveRecord::Base
    belongs_to :user
    
      # les caractéristiques obligatoires d'une annonce (room) pour qu'elle soit valide
  validates :school, presence: true
  validates :address, presence: true
  validates :sexe, presence: true
  validates :room_type, presence: true
  validates :home_type, presence: true
  validates :bail, presence: true
  validates :email, presence: true
  validates :nb_place, numericality: { only_integer: true }
  validates :nb_coloc, numericality: { only_integer: true }
  validates :price, numericality: { only_integer: true, greater_than: 5 }
  validates :apl, numericality: { only_integer: true }
  validates :listing_name, presence: true, length: {maximum: 75}
end
