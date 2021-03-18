class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  validates :content, presence: true
  validates :post_id, presence: true
  # validates :user_id, presence: true

  # accepts_nested_attributes_for :user, reject_if: proc {|attr| attr[:username].blank?}
  def user_attributes=(user_attributes)
    # binding.pry
    unless user_attributes[:username].blank?
      user = User.find_or_create_by(user_attributes)
      self.user = user
    end
  end
end
