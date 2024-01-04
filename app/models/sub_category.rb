# == Schema Information
#
# Table name: categories
#
#  id         :uuid             not null, primary key
#  icon_url   :string
#  name       :string           not null
#  type       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  parent_id  :uuid
#
# Indexes
#
#  index_categories_on_parent_id  (parent_id)
#
class SubCategory < Category
  belongs_to :main_category, class_name: 'Category', optional: true
end
