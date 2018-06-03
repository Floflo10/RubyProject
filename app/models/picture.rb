# @Author: Ismael Hadj
# @Date:   2018-05-21T10:46:10+02:00
# @Email:  Ismael.hadj13@yahoo.com
# @Last modified by:   Ismael Hadj
# @Last modified time: 2018-05-21T15:43:58+02:00



class Picture < ApplicationRecord
  belongs_to :travel

  mount_uploader :url, PictureUploader


  validates :url, presence: true
end
