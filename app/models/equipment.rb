class Equipment < ActiveRecord::Base

  mount_uploader :avatar, AvatarUploader
  has_paper_trail
  paginates_per 10

end