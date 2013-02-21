class Advertise < ActiveRecord::Base

  attr_accessible :content, :image, :title

  validates :content, :length => {:minimum => 10, :maximum => 1000}
  validates :title, :uniqueness => {:in => true, :message => "its must not use before"}, :length => {:minimum => 5, :maximum => 50}
end
