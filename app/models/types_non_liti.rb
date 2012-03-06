class TypesNonLiti < CompanyLookup
  validates_presence_of :alvalue, :message => "Non-Litigation Name can't be blank"
  has_many :matters, :foreign_key => :matter_type_id
  belongs_to :company
  #default_scope :order => 'lvalue ASC'
end
# == Schema Information
#
# Table name: company_lookups
#
#  id                   :integer         not null, primary key
#  type                 :string(255)
#  lvalue               :string(255)
#  company_id           :integer         default(1)
#  created_at           :datetime
#  updated_at           :datetime
#  deleted_at           :datetime
#  permanent_deleted_at :datetime
#  alvalue              :string(255)
#  category_id          :integer
#  sequence             :integer         default(0)
#

