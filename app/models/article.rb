class Article < ApplicationRecord
  #Relaciones
  belongs_to :user
  #index
  default_scope { order(updated_at: :desc)} #COLOCAR LOS MÁS ACTUALIZADOS DE PRIMERO
  #Url amigables
  extend FriendlyId
  friendly_id :title, use: :slugged
  #Validaciones
  validates :title, presence: true,
                    uniqueness: true,
                    length: { minimum: 10, maximum: 75 }
  validates :body, presence: true, length: { minimum: 10 }
end
