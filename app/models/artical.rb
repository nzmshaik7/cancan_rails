class Artical < ApplicationRecord
  belongs_to :user

	validates :name, presence: true
	default_scope  {where(is_published: true)}

end
