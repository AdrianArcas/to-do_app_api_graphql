module Resolvers
  class GetTasks < Resolvers::Base
    description 'Returns all the tasks'

    type [Types::TaskType], null: false

    def resolve
      Task.all
    end
  end
end