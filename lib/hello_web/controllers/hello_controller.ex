defmodule HelloWeb.HelloController do
  use HelloWeb, :controller

  def index(conn, _params) do
    # render conn, "index.html"
    conn
    # |> put_flash(:info, "Welcome Back!")
    # |> put_resp_content_type("text/plain")
    |> assign(:var, "I am a string")
    |> render("index.html")
  end

  def show(conn, %{"messenger" => messenger}) do
    render conn, "show.html", messenger: messenger
  end
end
