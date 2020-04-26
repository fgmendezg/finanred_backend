# == Schema Information
#
# Table name: fdconvenios
#
#  id            :bigint           not null, primary key
#  name_convenio :string(45)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Fdconvenio < ApplicationRecord
    has_and_belongs_to_many :fdsectors
    has_many :fdusuarios
end
