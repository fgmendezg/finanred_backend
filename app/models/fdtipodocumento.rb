# == Schema Information
#
# Table name: fdtipodocumentos
#
#  id             :bigint           not null, primary key
#  name_documento :string(50)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class Fdtipodocumento < ApplicationRecord
    validates :name_documento, presence: true, uniqueness: true
    validates :name_documento, length: { maximum:50, too_long: "El tipo de documento es demaciado largo" }

    has_many :fdusuarios
end
