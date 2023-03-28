module Types
  class MutationType < Types::BaseObject

    field :create_task, resolver: Resolvers::CreateTask
    field :check_task, resolver: Resolvers::CheckTask
  end
end
