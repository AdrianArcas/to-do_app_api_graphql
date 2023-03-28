module Resolvers
  class GetActiveTasksCounter < Resolvers::Base
    description 'Returns the number of all the active tasks'

    type Integer, null: false

    def resolve
      Task.all.where(state:"active").count
    end
  end
end