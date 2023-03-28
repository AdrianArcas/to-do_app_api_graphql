require 'rails_helper'
require 'tasks_api'

RSpec.describe 'tasks', type: :integration do

  it "returns a list of all tasks with status and body" do
    tasks = list_tasks

    expect(tasks['data']).to eq "tasks" => []

    create_task('Buy Milk')

    tasks = list_tasks

    expect(tasks['data']).to eq "tasks" => [{ 'body' => 'Buy Milk', 'state' => 'active' }]

  end
end


