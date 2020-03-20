# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  caption    :string
#  image      :string
#  location   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  owner_id   :integer
#

class Photo < ApplicationRecord
belongs_to :owner, :class_name => "User"
validates :owner_id, :presence => true
validates :image, :presence => true

end
