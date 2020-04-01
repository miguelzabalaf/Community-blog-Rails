class Article < ApplicationRecord
  belongs_to :user
  default_scope { order(updated_at: :desc)} #COLOCAR LOS MÁS ACTUALIZADOS DE PRIMERO
  extend FriendlyId
  friendly_id :title, use: :slugged
  validates :title, presence: true,
                    uniqueness: true,
                    length: { minimum: 10, maximum: 75 }
  validates :body, presence: true, length: { minimum: 10 }
end
