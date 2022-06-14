class TimeRequired < ActiveHash::Base
  self.data = [
    { id: 1, name: '--調理時間を選択してください--' },
    { id: 2, name: '5分以内' },
    { id: 3, name: '10分以内' },
    { id: 4, name: '20分以内' },
    { id: 5, name: '30分以内' },
    { id: 6, name: '30分以上' }
  ]

  include ActiveHash::Associations
  has_many :recipes

  end