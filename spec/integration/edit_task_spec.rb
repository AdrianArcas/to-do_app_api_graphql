require 'rails_helper'
require 'tasks_api'

RSpec.describe 'edit_task', type: :integration  do

  it "test if the body of a task is edited" do

    new_task=create_task("Unedited task")
    new_task_id = new_task['data']['createTask']['id']
    edit_task(new_task_id,"Edited task")
    tasks = list_tasks

    expect(tasks['data']).to eq "tasks"=>[{ 'body' => 'Edited task', 'state' => 'active'}]
  end
end
