require 'rails_helper'
require 'tasks_api'

RSpec.describe 'tasks', type: :integration do

  it "returns a list of all unchecked tasks" do

    create_task('Buy Milk')
    checked_task = create_task('Walk the dog')
    check_task(checked_task['data']['createTask']['id'])

    tasks = list_active_tasks
    expect(tasks['data']).to eq "activeTasks" => [{ 'body' => 'Buy Milk', 'state' => 'active' }]

  end
end


