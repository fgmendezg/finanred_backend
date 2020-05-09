# == Schema Information
#
# Table name: fdsectors
#
#  id          :bigint           not null, primary key
#  name_sector :string(45)       not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Fdsector < ApplicationRecord
    validates :name_sector, presence: true, uniqueness: true
    validates :name_sector, length: { maximum:45, too_long: "El nombre del sector es demaciado largo" }

    has_and_belongs_to_many :fdconvenios
    has_many :fdusuarios
end
