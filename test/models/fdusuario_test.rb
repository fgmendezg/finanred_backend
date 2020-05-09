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
#  password_digest    :string(50)
#
require 'test_helper'

class FdusuarioTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
