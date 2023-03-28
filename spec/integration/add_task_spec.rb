require 'rails_helper'
require 'tasks_api'

RSpec.describe 'create_task', type: :integration  do

  it "creates a new task " do
    tasks = list_tasks

    expect(tasks['data']).to eq "tasks" => []

    create_task("Buy Milk")
    create_task("Make food")
    tasks = list_tasks

    expect(tasks['data']).to eq "tasks"=>[{ 'body' => 'Buy Milk', 'state' => 'active'}, {'body' => 'Make food', 'state' => 'active'}]

  end
end
