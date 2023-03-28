module Types
  class MutationType < Types::BaseObject

    field :create_task, resolver: Resolvers::CreateTask
    field :check_task, resolver: Resolvers::CheckTask
    field :undo_check_task, resolver: Resolvers::UndoCheckTask
    field :edit_task,resolver: Resolvers::EditTask
    field :delete_completed_tasks,resolver: Resolvers::DeleteCompletedTasks
  end
end
