class User < ApplicationRecord
  has_many :articles
  default_scope { order(updated_at: :desc)} #COLOCAR LOS MÁS ACTUALIZADOS DE PRIMERO

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
