class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # validates :first_name, presence: true
  # validates :last_name, presence: true
  # validates :avatar, presence: true
  mount_uploader :avatar, PhotoUploader
  # verifier que cette ligne pour l'avatar est utile
  # has_attachment :avatar

  JOBS = ['Avocat', 'Notaire', 'Huissier', 'Juriste']
  # validates :job, inclusion: { in: JOBS }

  # has_many :proposed_services, through: :procedures, source: :services
  has_many :services, dependent: :destroy
  has_many :procedures, dependent: :destroy
  has_many :proposed_services, through: :services, source: :procedures

end
