defmodule Userlist.LayoutView do
  use Userlist.Web, :view

  def digest do
      manifest =
        Application.get_env(:userlist, Userlist.Endpoint, %{})[:cache_static_manifest]
        || "priv/static/manifest.json"

      manifest_file = Application.app_dir(:userlist, manifest)

      if File.exists?(manifest_file) do
        manifest_file
        |> File.read!
      else
        %{}
      end
    end
end
