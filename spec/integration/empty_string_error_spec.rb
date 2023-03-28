require 'rails_helper'
require 'tasks_api'

RSpec.describe 'create_task', type: :integration  do

  it "creates a new task with a empty body " do

    wrong_body_task = create_task("")

    expect(wrong_body_task["errors"]).to_not eq nil
    expect(wrong_body_task["data"]).to eq nil

  end
end
