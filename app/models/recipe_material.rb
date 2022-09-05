class RecipeMaterial < ApplicationRecord
  belongs_to :material
  belongs_to :recipe
  
  # タグ保存
  # def save_tags(tags)
  # current_tags = self.tags.pluck(:tag_name) unless self.tags.nil?
  # old_tags = current_tags - tags
  # new_tags = tags - current_tags

  # # Destroy
  # old_tags.each do |old_name|
  #   self.tags.delete Tag.find_by(tag_name:old_name)
  # end

  # # Create
  # new_tags.each do |new_name|
  #   diary_tag = Tag.find_or_create_by(tag_name:new_name)
  #   self.tags << diary_tag
  # end
  # end
  
end
