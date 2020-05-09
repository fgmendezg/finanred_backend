# == Schema Information
#
# Table name: fdtipoadminusers
#
#  id            :bigint           not null, primary key
#  tipoadminuser :string(45)       not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Fdtipoadminuser < ApplicationRecord
    validates :tipoadminuser, presence: true, uniqueness: true
    validates :tipoadminuser, length: { maximum:45, too_long: "El tipo de administrador es demaciado largo" }

    has_and_belongs_to_many :fdadministradors
end
