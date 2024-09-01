class CascNew < ApplicationRecord
  NEWS_TYPES = [ ['News', 'news'], ['Release', 'release'], ['Success', 'success'], ['Event', 'event'], ['Test', 'test'] ]
  NEWS_TYPES_VALUES = [ 'news', 'release', 'success', 'event', 'test' ]


  belongs_to :user

  validates :title, presence: true, length: { minimum: 5 }
  validates :content, presence: true, length: { minimum: 10 }
  validates :nType, presence: true, inclusion: { in: NEWS_TYPES_VALUES }
  validates :user, presence: true



  end