class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '低糖質' },
    { id: 3, name: '砂糖不使用' },
    { id: 4, name: 'グルテンフリー' },
    { id: 5, name: '食物繊維豊富' },
    { id: 6, name: 'ビタミン豊富' },
    { id: 7, name: '冷え性対策' },
    { id: 8, name: '鉄分豊富' }
  ]

  include ActiveHash::Associations
  has_many :recipes
  
  end