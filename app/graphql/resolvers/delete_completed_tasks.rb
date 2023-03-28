module Resolvers
  class DeleteCompletedTasks < Resolvers::Base
    description 'Deletes all the completed tasks'

    type [Types::TaskType], null: false

    def resolve
      Task.all.where(state:"completed").each { |task| task.destroy; task.save; task }
    end

    end
  end