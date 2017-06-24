defmodule Userlist.UserController do
  use Userlist.Web, :controller

  alias Userlist.User
  alias Userlist.Repo

  def index(conn, _params) do
    users = Repo.all(User)
    render conn, "users.json", users: users
  end
end
