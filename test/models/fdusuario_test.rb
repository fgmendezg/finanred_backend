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
require 'test_helper'

class FdusuarioTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end