class ChecklistSerializer < ActiveModel::Serializer
  attributes :id, :card_id, :name, :pos
end
