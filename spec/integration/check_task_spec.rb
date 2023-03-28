require 'rails_helper'
require 'tasks_api'

RSpec.describe 'check_task', type: :integration  do

  it "marks a task as checked by changing the status to complete" do

    new_task=create_task("Active task")
    check_task(new_task['data']['createTask']['id'])
    tasks = list_tasks

    expect(tasks['data']).to eq "tasks"=>[{ 'body' => 'Active task', 'state' => 'completed'}]
  end
end
