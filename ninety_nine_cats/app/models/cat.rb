# == Schema Information
#
# Table name: cats
#
#  id          :bigint           not null, primary key
#  birth_date  :date             not null
#  color       :string
#  name        :string           not null
#  sex         :string(1)        not null
#  description :text             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "action_view"

class Cat < ApplicationRecord
    
    include ActionView::Helpers::DateHelper

    COLORS = [
        'black',
        'white',
        'brown',
        'orange'
    ]

    validates :color, inclusion: { in: COLORS }
    validates :name, :sex, :color, :birth_date, :description, presence: true
    validates :sex, inclusion: { in: ['M', 'F'] }

    def age
        time_ago_in_words(birth_date)
    end

end

# k = Cat.new(name: 'Kat', sex: 'M', color: 'orange', birth_date: 2015/01/20, description: 'namsjhdkehe')
