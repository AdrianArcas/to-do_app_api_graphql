module Resolvers
  class UndoCheckTask < Resolvers::Base
    description 'Changes the status of a task'

    type Types::TaskType, null: false

    argument :id, ID, required: true

    def resolve(id:)
      task = Task.find(id)
      task.state = "active"
      task.save
      task
    end
  end
end
