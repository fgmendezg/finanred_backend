# == Schema Information
#
# Table name: fdtipoadminusers
#
#  id            :bigint           not null, primary key
#  tipoadminuser :string(45)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Fdtipoadminuser < ApplicationRecord
    has_and_belongs_to_many :fdadministradors
end
