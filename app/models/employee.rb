class Employee < ApplicationRecord
    validates_uniqueness_of :alias, :title
    validates_presence_of :first_name,:last_name,:alias,:title,:office,:img_url,:dog_id

    belongs_to :dog


    def full_name
        "#{first_name} #{last_name}"
    end

end
