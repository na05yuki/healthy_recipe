class NemberOfPeople < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '１人分' },
    { id: 3, name: '２人分' },
    { id: 4, name: '３人分' },
    { id: 5, name: '４人分' },
    { id: 6, name: '５人分' },
    { id: 7, name: '６人分以上' }
  ]

  include ActiveHash::Associations
  has_many :recipes
  
  end