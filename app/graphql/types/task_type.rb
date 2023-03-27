module Types
  class TaskType < Types::BaseObject
    field :body,String,null:false
    field :state,String,null:false
    field :tasks,[TaskType],null:true

  end
end