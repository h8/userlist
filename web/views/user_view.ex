defmodule Userlist.UserView do
  use Userlist.Web, :view

  def render("users.json", %{users: users}) do
    %{
      users: Enum.map(users, &user_json/1)
    }
  end

  def user_json(user) do
    %{
      name: user.name,
      active: user.active
    }
  end
end