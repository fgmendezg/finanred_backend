# == Schema Information
#
# Table name: fdconvenios
#
#  id            :bigint           not null, primary key
#  name_convenio :string(45)       not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Fdconvenio < ApplicationRecord
    validates :name_convenio, presence: true, uniqueness: true
    validates :name_convenio, length: { maximum:45, too_long: "El convenio es demaciado largo" }

    has_and_belongs_to_many :fdsectors
    has_many :fdusuarios
end
