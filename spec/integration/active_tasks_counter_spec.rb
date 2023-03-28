require 'rails_helper'
require 'tasks_api'

RSpec.describe 'tasks_counter', type: :integration do

  it "returns the number of all active tasks" do

    create_task('Buy Milk')
    checked_task = create_task('Walk the dog')
    check_task(checked_task['data']['createTask']['id'])
    create_task('2nd active task')

    pp no_of_tasks = active_tasks_counter
    expect(no_of_tasks['data']['activeTasksCounter']).to eq 2

  end
end