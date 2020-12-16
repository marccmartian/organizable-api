class LabelSerializer < ActiveModel::Serializer
  attributes :id, :board_id, :name, :color
end
