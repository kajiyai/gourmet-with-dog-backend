class SubCategory < Category
  belongs_to :main_category, class_name: 'Category', optional: true
end
