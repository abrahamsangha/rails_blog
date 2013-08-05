class Post < ActiveRecord::Base
  attr_accessible :title, :author, :content
  validates_presence_of :title, :author, :content
end
