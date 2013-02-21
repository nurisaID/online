class Post < ActiveRecord::Base
  attr_accessible :content, :name, :title

  validates :name, :length => {:in => 5..100}, :presence => {:in => true, :message => "its cannot blank"}, :uniqueness => {:in => true, :message => "is already used before"}
end
