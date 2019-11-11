class ConversationSerializer < ActiveModel::Serializer
  attributes :id, :topic, :messages
end
