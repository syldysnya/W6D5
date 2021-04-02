class Cat < ApplicationRecord

    validates: :color, inclusion: {in: ['black', 'white', 'brown', 'orange']}
    validates: :name, :sex, :color, :birth_date, :description



end