class MessageSerializer < ActiveModel::Serializer
  attributes :id, :content, :user
end
