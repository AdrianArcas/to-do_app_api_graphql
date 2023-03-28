module Resolvers
  class GetActiveTasks < Resolvers::Base
    description 'Returns all the active tasks'

    type [Types::TaskType], null: false

    def resolve
      Task.all.where(state:"active")
    end
  end
end