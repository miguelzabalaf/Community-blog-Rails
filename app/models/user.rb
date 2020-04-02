class User < ApplicationRecord
  #Relaciones
  has_many :articles
  #Index
  default_scope { order(updated_at: :desc)} #COLOCAR LOS MÁS ACTUALIZADOS DE PRIMERO
  #Auntenticaciones de los usuarios en Devise
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
