module Types
  class TaskType < Types::BaseObject
    field :id, ID, null:false
    field :body, String, null: false
    field :state, String, null: false
  end
end