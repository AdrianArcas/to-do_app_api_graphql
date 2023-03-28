module Types
  class MutationType < Types::BaseObject

    field :create_task, resolver: Resolvers::CreateTask
    field :check_task, resolver: Resolvers::CheckTask
    field :edit_task,resolver: Resolvers::EditTask
  end
end
