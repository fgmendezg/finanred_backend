# == Schema Information
#
# Table name: fdusuarios
#
#  id                 :bigint           not null, primary key
#  email              :string(100)      not null
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
#  fdtipodocumento_id :bigint
#  fdconvenio_id      :bigint
#  fdsector_id        :bigint
#
class Fdusuario < ApplicationRecord
    validates :email, presence: true
    # No es sensible a las mayusculas
    validates :email, uniqueness: { case_sensitive: false }
    # No permite repetodps a menos que sea nulos
    validates :num_identificacion, uniqueness: true, unless: Proc.new { |b| b.num_identificacion.blank? }
    validates :email, length: { maximum:100, too_long: "El email es demaciado largo" }
    validates :ruta_docs, length: { maximum:100, too_long: "La ruta es demaciado larga" }
    validates :num_identificacion, :primer_nombre, :segundo_nombre, :primer_apellido, :segundo_apellido, :departamento, :ciudad, :celular, :telefono, length: { maximum:45, too_long: "Se permiten máximo %´{count} caracteres" }

    has_many :fdnamedocs
    belongs_to :fdtipodocumento, optional: true
    belongs_to :fdsector, optional: true
    belongs_to :fdconvenio, optional: true
    has_and_belongs_to_many :fdadministradors
end
