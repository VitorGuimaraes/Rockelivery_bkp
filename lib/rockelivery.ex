defmodule Rockelivery do
  
  # When the application receive a call for create_user(), it will 
  # delegate the call for UserCreate (/lib/rockelivery/users/create.ex), 
  # calling call() function
  alias Rockelivery.Users.Create, as: UserCreate
  defdelegate create_user(params), to: UserCreate, as: :call
end
