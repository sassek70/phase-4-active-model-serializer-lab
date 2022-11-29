class PostSerializer < ActiveModel::Serializer
  attributes :title, :content, :short_content

  has_one :author
  has_many :tags
  # has_many :tags, through: :post_tags

  def short_content
    "#{self.object.content[0..39]}..."
  end
end
