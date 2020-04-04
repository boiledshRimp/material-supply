class Material < ApplicationRecord
  validates :text, presence: true
  validates :image, presence: true
  belongs_to :user
  has_many :comments, dependent: :destroy


  def self.search(search)
    if search
      Material.where('text LIKE(?)', "%#{search}%")
    else
      Material.all
    end
  end

  mount_uploader :image, ImageUploader 

end


