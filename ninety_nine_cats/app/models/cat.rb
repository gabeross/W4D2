# == Schema Information
#
# Table name: cats
#
#  id          :bigint(8)        not null, primary key
#  birth_date  :date             not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string(1)        not null
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Cat < ApplicationRecord
  include ActionView::Helpers::DateHelper

  
  validates :birth_date, presence: true
  validates :color, presence: true
  validates :color, inclusion: {in: %w(white black brown grey tabby)}
  validates :name, presence: true
  validates :sex, inclusion: {in: %w(M F)}
  
  
  def age(birth_date)
    time_ago_in_words(birth_date)
  end
end
