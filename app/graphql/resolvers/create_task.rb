module Resolvers
  class CreateTask < Resolvers::Base
    description 'Creates a new task'

    type Types::TaskType, null: false

    argument :body,String,required: true


    def resolve(body:)
      if body.empty?
        GraphQL::ExecutionError.new("Body can`t be an empty string")
      else
      task = Task.new(body:body,state:"active")
      task.save
      task
      end
    end
  end
end