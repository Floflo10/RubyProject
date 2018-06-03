# @Author: Ismael Hadj
# @Date:   2018-05-21T10:46:10+02:00
# @Email:  Ismael.hadj13@yahoo.com
# @Last modified by:   Ismael Hadj
# @Last modified time: 2018-05-21T16:17:57+02:00



class PictureUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
end
