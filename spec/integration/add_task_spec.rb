require 'rails_helper'

RSpec.describe 'tasks', type: :integration  do

  it "returns a list of all tasks with status and body" do
    query = <<~GQL
        mutation{
        createTask(
        body: "tested task"
                  )
        {
          body
          state
	      }
      }
    GQL
    expected_result = Task.last

    post graphql_path, params: { query: query }

    parsed_result = JSON.parse(response.body)
    expect(parsed_result).equal?(expected_result)
  end
end
