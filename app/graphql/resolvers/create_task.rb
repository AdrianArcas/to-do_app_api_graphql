module Resolvers
  class CreateTask < Resolvers::Base
    description 'Creates a new task'

    type Types::TaskType, null: false

    argument :body,String,required: true

    def resolve(body:)

      task = Task.new(body:body,state:"active")
      task.save
      task
    end
  end
end
