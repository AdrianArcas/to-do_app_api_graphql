module Resolvers
  class EditTask < Resolvers::Base
    description 'Edits a task body'

    type Types::TaskType, null: false

    argument :id, ID, required: true
    argument :body,String, required: true

    def resolve(id:, body:)
      task = Task.find(id)
      task.body = body
      task.save
      task
    end
  end
end