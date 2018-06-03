# @Author: Ismael Hadj
# @Date:   2018-05-21T10:46:10+02:00
# @Email:  Ismael.hadj13@yahoo.com
# @Last modified by:   Ismael Hadj
# @Last modified time: 2018-05-21T15:18:12+02:00



class Travel < ApplicationRecord
  has_many :topic
  mount_uploader :photo, PictureUploader
  # rajouter :topic une fois les topic gerer
  validates :title, :narrative, :duration, :destination, :photo, presence: true
end
