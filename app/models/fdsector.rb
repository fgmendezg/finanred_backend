# == Schema Information
#
# Table name: fdsectors
#
#  id          :bigint           not null, primary key
#  name_sector :string(45)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Fdsector < ApplicationRecord
    has_and_belongs_to_many :fdconvenios
    has_many :fdusuarios
end
