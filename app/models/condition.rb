class Condition < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '商品' },
    { id: 3, name: '新品、未使用' },
    { id: 4, name: '未使用に近い' },
    { id: 5, name: '目立った傷や汚れなし' },
    { id: 6, name: 'やや傷や汚れあり' },
    { id: 7, name: '傷や汚れあり' },
    { id: 8, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :items
  end
