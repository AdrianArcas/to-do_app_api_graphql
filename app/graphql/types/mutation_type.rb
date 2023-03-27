module Types
  class MutationType < Types::BaseObject

    field :create_task, resolver: Resolvers::CreateTask
  end
end
