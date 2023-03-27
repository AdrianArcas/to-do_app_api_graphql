require 'rails_helper'

RSpec.describe "task retrieval" do
  it "returns a list of all tasks with status and body" do
    query = <<~GQL
        {
        tasks{
          body
          state
        }
        }
    GQL
    expected_result ='{
      "data": {
        "tasks": [
          {
            "body": "do something",
            "state": "active"
          },
          {
            "body": "do something else",
            "state": "completed"
          },
          {
            "body": "do something else else",
            "state": "active"
          }
        ]
      }
    }'
    result =ToDoAppApiGraphqlSchema.execute(query)
    pp result
    expect(result).equal?(expected_result)
  end


end
