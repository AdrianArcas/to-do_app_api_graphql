require 'rails_helper'
require 'tasks_api'

RSpec.describe 'deletes tasks with the state complete', type: :integration do

  it "returns the number of all active tasks" do

    create_task("Active task")
    completed_task = create_task('Completed task')

    completed_task_id = completed_task['data']['createTask']['id']

    check_task(completed_task_id)
    delete_completed_tasks
    tasks = list_tasks

    expect(tasks['data']).to eq "tasks" => [{ 'body' => 'Active task', 'state' => 'active' }]

  end
end