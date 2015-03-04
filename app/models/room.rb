class Room < ActiveRecord::Base
  has_many :meetings
  accepts_nested_attributes_for :meetings

  validates_presence_of :room_name, :location
  paginates_per 5
  has_attached_file :photo,
  :styles => { :medium => "300x300>", :thumb => "100x100>" },
  :bucket => 'kbjsinstaclone',
  :url =>':s3_domain_url',
  :path => ':class/:attachment/:id_partition/:style/:filename',
  :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/


end
