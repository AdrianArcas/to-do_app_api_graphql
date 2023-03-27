module Types
  class QueryType < Types::BaseObject

    field :tasks, [TaskType],null: true

    def tasks
      Task.all
    end

  end
end
