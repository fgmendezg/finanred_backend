# == Schema Information
#
# Table name: fdadministradors
#
#  id         :bigint           not null, primary key
#  name_user  :string(45)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Fdadministrador < ApplicationRecord
    has_and_belongs_to_many :fdtipoadminusers
    has_and_belongs_to_many :fdusuarios
end
