require 'rails_helper'

def list_tasks
    query = <<~GQL
        {
        tasks{
          body
          state
        }
        }
    GQL

    post graphql_path, params: { query: query }

    JSON.parse(response.body)
end

def create_task(body)
    query = <<~GQL
        mutation CreateTask($body : String!){
        createTask(
        body: $body
        )
        { id
          body
          state
	      }
      }
    GQL
    variables = {body: body}

    post graphql_path, params: { query: query, variables: variables }

    JSON.parse(response.body)
  end

def check_task(id)
  query = <<~GQL
        mutation CheckTask($id : ID!){
        checkTask(id: $id)
        {
          id
          body
          state
	      }
      }
  GQL
  variables ={id: id}
  post graphql_path, params: { query: query, variables: variables }
  JSON.parse(response.body)
end

def edit_task(id,body)
  query = <<~GQL
        mutation EditTask($id : ID!,$body : String!){
        editTask(id: $id,body: $body)
        {
          id
          body
          state
	      }
      }
  GQL
  variables ={id: id,body:body}
  post graphql_path, params: { query: query, variables: variables }
  JSON.parse(response.body)
end

def list_active_tasks
  query = <<~GQL
        {
        activeTasks{
          body
          state
        }
        }
  GQL

  post graphql_path, params: { query: query }

  JSON.parse(response.body)
end

def active_tasks_counter
  query = <<~GQL
        {
        activeTasksCounter
        }
  GQL

  post graphql_path, params: { query: query }

  JSON.parse(response.body)
end