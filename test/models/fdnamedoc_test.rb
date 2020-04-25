# == Schema Information
#
# Table name: fdnamedocs
#
#  namedoc    :string(45)       not null
#  id_namedoc :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  id_email   :string(100)
#
require 'test_helper'

class FdnamedocTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
