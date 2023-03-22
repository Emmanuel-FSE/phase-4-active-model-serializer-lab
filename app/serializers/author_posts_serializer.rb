class AuthorPostsSerializer < ActiveModel::Serializer
  attributes :title, :short_content, :tags
  def short_content
    "#{self.object.content[0..39]}..."
  end
  def tags
    object.tags
  end
end
