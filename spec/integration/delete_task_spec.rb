require 'rails_helper'
require 'tasks_api'

RSpec.describe 'delete task', type: :integration  do

  it "creates a new task with a empty body " do
    first_task_id = create_task("Buy milk")["data"]["createTask"]["id"]
    create_task("Do dishes")
    delete_task(first_task_id)
    tasks = list_tasks

    expect(tasks['data']).to eq "tasks" => [{ 'body' => 'Buy dishes', 'state' => 'active' }]


  end
end