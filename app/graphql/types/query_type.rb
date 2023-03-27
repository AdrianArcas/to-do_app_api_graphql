module Types
  class QueryType < Types::BaseObject
    field :tasks, resolver: Resolvers::GetTasks
  end
end
