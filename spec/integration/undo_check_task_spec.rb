require 'rails_helper'
require 'tasks_api'

RSpec.describe 'undo check task', type: :integration  do

  it "marks a task as unchecked by changing the status to active" do

    new_task=create_task("Active task")
    new_task_id=new_task['data']['createTask']['id']
    check_task(new_task_id)
    undo_check_task(new_task_id)

    tasks = list_tasks
    expect(tasks['data']).to eq "tasks"=>[{ 'body' => 'Active task', 'state' => 'active'}]
  end
end
