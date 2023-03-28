module Types
  class QueryType < Types::BaseObject
    field :tasks, resolver: Resolvers::GetTasks
    field :active_tasks, resolver: Resolvers::GetActiveTasks
    field :active_tasks_counter, resolver: Resolvers::GetActiveTasksCounter
  end
end
