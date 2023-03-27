module Types
  class TaskType < Types::BaseObject
    field :body, String, null: false
    field :state, String, null: false
  end
end