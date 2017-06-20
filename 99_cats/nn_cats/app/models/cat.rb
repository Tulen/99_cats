class Cat < ApplicationRecord
  COLORS = ['black', 'brown', 'white', 'Calico', 'grey'].freeze
  SEX = ['M', 'F'].freeze
  validates :birth_date, presence: true
  validates :color, presence: true
  validates :name, presence: true
  validates :sex, presence: true
  validates :description, presence: true


  validates :color, inclusion: { in: COLORS, message: "This is not a valid color" }

  validates :sex, inclusion: { in: SEX, message: "This is not a valid color" }

  def age
    days = (Date.today - self.birth_date)
    days.to_i / 365
  end
end
# d = Cat.create!(birth_date: Date.today, color: 'black', name: 'John', sex: 'M', description: 'a')
