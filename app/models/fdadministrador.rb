# == Schema Information
#
# Table name: fdadministradors
#
#  id         :bigint           not null, primary key
#  name_user  :string(45)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Fdadministrador < ApplicationRecord
    validates :name_user, presence: true, uniqueness: true
    validates :name_user, length: { maximum:45, too_long: "El nombre de usuario es demaciado largo" }

    has_and_belongs_to_many :fdtipoadminusers
    has_and_belongs_to_many :fdusuarios
end
