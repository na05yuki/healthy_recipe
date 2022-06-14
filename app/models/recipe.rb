class Recipe < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :time_required
  belongs_to :number_of_people
  belongs_to :category

  belongs_to :user
  has_many :comments

  with_options presence: true do
    validates :title
    validates :ingredient
    validates :explanation

    with_options numericality: { other_than: 1, message: 'を選択してください' } do
      validates :time_required_id
      validates :number_of_people_id
      validates :category_id
    end
  end
end
