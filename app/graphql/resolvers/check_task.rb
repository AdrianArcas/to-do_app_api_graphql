module Resolvers
  class CheckTask < Resolvers::Base
    description 'Changes the status of a task'

    type Types::TaskType, null: false

    argument :id,ID,required: true

    def resolve(id:)
      task = Task.find(id)
      if task.state = "active"
        task.state = "completed"
      end
      task
    end
  end
end
