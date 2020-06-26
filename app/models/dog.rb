class Dog < ApplicationRecord
    validates_presence_of :name, :breed, :age
    has_many :employees


    
end
