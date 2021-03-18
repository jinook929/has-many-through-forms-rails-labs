class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  # accepts_nested_attributes_for :categories, reject_if: proc {|attr| attr[:name].blank?}

  # accepts_nested_attributes_for :comments, reject_if: :all_blank
  #, reject_if: proc {|attr| attr[:content]blank?}

  def categories_attributes=(categories_attributes)
    categories_attributes.values.each {|category_attributes|
      unless category_attributes[:name].blank?
        category = Category.find_or_create_by(category_attributes)
        self.post_categories.build(category: category)
      end
    }    
  end

end
