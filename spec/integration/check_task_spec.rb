require 'rails_helper'

RSpec.describe 'check_task', type: :integration  do

  it "marks a task as checked by changing the status to complete" do
    query = <<~GQL
        mutation{
        checkTask(id:1)
        {
          body
          state
	      }
      }
    GQL
    expected_result = Task.find(1).state

    post graphql_path, params: { query: query }
    expect("completed").equal?(expected_result)
  end
end
