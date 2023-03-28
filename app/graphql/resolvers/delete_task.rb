module Resolvers
  class DeleteTask < Resolvers::Base
    description 'Deletes a task'

    type Types::TaskType, null: false

    argument :id, ID, required: true

    def resolve(id:)
      task = Task.find(id)
      task.destroy
      task.save
      task
    end

  end
end
