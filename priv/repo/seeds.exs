# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Userlist.Repo.insert!(%Userlist.SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Userlist.Repo
alias Userlist.User

Repo.insert! %User{
  name: "User 01"
}

Repo.insert! %User{
  name: "User 02"
}

Repo.insert! %User{
  name: "User 03",
  active: false
}