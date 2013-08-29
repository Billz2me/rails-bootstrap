class Post < ActiveRecord::Base

validates_presence_of :created_by, :title, :content

end
