module Types
  class QueryType < Types::BaseObject
    field :tasks, resolver: Resolvers::GetTasks
    field :active_tasks, resolver: Resolvers::GetActiveTasks
  end
end
