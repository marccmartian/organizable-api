class CheckItemSerializer < ActiveModel::Serializer
  attributes :id, :checklist_id, :name, :pos, :completed
end
