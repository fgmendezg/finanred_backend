# == Schema Information
#
# Table name: fdusuarios
#
#  id_email           :string(100)      not null, primary key
#  num_identificacion :string(45)
#  primer_nombre      :string(45)
#  segundo_nombre     :string(45)
#  primer_apellido    :string(45)
#  segundo_apellido   :string(45)
#  departamento       :string(45)
#  ciudad             :string(45)
#  celular            :string(45)
#  telefono           :string(45)
#  ruta_docs          :string(100)
#  tipo_empleado      :boolean
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
class Fdusuario < ApplicationRecord
    validates :id_email, presence: true
    validates :id_email, length: { maximum:100, too_long: "El email es demaciado largo" }
    validates :ruta_docs, length: { maximum:100, too_long: "La ruta es demaciado larga" }
    validates :num_identificacion, :primer_nombre, :segundo_nombre, :primer_apellido, :segundo_apellido, :departamento, :ciudad, :celular, :telefono, length: { maximum:45, too_long: "Se permiten máximo %´{count} caracteres" }

    has_many :fdnamedocs
end
