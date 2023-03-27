require 'rails_helper'

RSpec.describe 'tasks', type: :integration  do

  it "returns a list of all tasks with status and body" do
    query = <<~GQL
        {
        tasks{
          body
          state
        }
        }
    GQL
    expected_result = {
      "data" => {
        "tasks" => [
          {
            "body" => "do something",
            "state" => "active"
          },
          {
            "body" => "do something else",
            "state" => "completed"
          },
          {
            "body" => "do something else else",
            "state" => "active"
          }
        ]
      }
    }

    post graphql_path, params: { query: query }

    parsed_result = JSON.parse(response.body)
    expect(parsed_result).equal?(expected_result)
  end
end
