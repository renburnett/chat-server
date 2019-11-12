class MessageSerializer < ActiveModel::Serializer
  attributes :id, :content, :user, :conversation, :created_at
end
