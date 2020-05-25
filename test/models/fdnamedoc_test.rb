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
require 'test_helper'

class FdnamedocTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
