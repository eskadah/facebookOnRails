class Post < ActiveRecord::Base
  belongs_to :user

  validate :user_present?

  def user_present?
    errors.add(:user_id,'posts must have authors') if user_id.blank?
  end
end
