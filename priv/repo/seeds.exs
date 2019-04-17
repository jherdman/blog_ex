# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Blog.Repo.insert!(%Blog.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Blog.Content

Content.create_post(%{title: "Absinthe Tutorial", body: "Yo dawg..."})

Content.create_post(%{title: "Sith Skills", body: "Step one: kill all of the younglings"})
