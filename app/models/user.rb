class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :age
  belongs_to :sex
  belongs_to :status
  belongs_to :favorite_title
  belongs_to :icon
  has_many :rooms

  validates :phone_number, presence: true, format: { with: /\A\d{10,11}\z/, message: "は10桁または11桁の半角数字で入力してください" }
  validates :nick_name, :age_id, :sex_id, :status_id, :favorite_title_id, :icon_id, presence: true


end
