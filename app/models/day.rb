class Day < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '日付指定' },
    { id: 3, name: '即日' },
    { id: 4, name: '3日以内' },
    { id: 5, name: '10日以内' },
    { id: 6, name: '2週間以内' },
    { id: 7, name: '１ヶ月以上' }
  ]

  include ActiveHash::Associations
  has_many :items
  end