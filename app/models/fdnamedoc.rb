# == Schema Information
#
# Table name: fdnamedocs
#
#  id           :bigint           not null, primary key
#  namedoc      :string(500)      not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  fdusuario_id :bigint           not null
#  rute         :string(45)       not null
#  name         :string(45)       not null
#
class Fdnamedoc < ApplicationRecord
    #validates :namedoc, uniqueness: { case_sensitive: true }
    validates :namedoc, :fdusuario_id, :rute, :name, presence: true
    validates :rute, :name, length: { maximum:45, too_long: "El nombre de la ruta es muy largo, se permiten máximo %{count} caracteres" }
    #validates :namedoc, length: { maximum:500, too_long: "El nombre del archivo es demaciado largo, se permiten máximo %{count} caracteres" }

    #carrier
    mount_uploader :namedoc, AvatarUploader

    belongs_to :fdusuario
end
