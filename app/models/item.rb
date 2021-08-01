class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  has_one_attached :image
  belongs_to :category
  belongs_to :burden
  belongs_to :day
  belongs_to :area
  belongs_to :condition
  has_many :comments
  # , dependent: :destroy



  validates :title, presence: true
  validates :detail, presence: true
  validates :price, presence: true
  validates :image, presence: true

  validates :category_id, numericality: { other_than: 1 , message: "can't be blank"}
  validates :burden_id, numericality: { other_than: 1 , message: "can't be blank"}
  validates :day_id, numericality: { other_than: 1 , message: "can't be blank"}
  validates :area_id, numericality: { other_than: 1 , message: "can't be blank"}
  validates :condition_id, numericality: { other_than: 1 , message: "can't be blank"}

  def self.search(search)
    if search != ""
      Item.where('text LIKE(?)', "%#{search}%")
    else
      Item.all end
  end
end
