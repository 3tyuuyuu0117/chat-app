class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true #
    #↑11「name」カラムに、presence: trueを設けることで、空の場合はDBに保存しないというバリデーションを設定
end
