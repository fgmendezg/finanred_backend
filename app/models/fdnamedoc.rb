# == Schema Information
#
# Table name: fdnamedocs
#
#  namedoc    :string(45)       not null
#  id_namedoc :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Fdnamedoc < ApplicationRecord
    validates :namedoc, presence :true
    validates :namedoc, length: { maximum:45, too_long: "El nombre del archivo es demaciado largo" }
end
