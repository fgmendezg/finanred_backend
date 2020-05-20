# == Schema Information
#
# Table name: fdnamedocs
#
#  id           :bigint           not null, primary key
#  namedoc      :string(45)       not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  fdusuario_id :bigint           not null
#
class Fdnamedoc < ApplicationRecord
    validates :namedoc, :id_email, presence: true
    validates :namedoc, length: { maximum:45, too_long: "El nombre del archivo es demaciado largo" }

    #carrier
    mount_uploader :namedoc, AvatarUploader

    belongs_to :fdusuario
end
