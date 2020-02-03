defmodule HelloWeb.HelloController do
  use HelloWeb, :controller

  def index(conn, _params) do
    # render conn, "index.html"
    conn
    # Will render a flash in the page. Can also be :error
    # |> put_flash(:info, "Welcome Back!")

    # Will output the code in plain text.
    # put_res_content_type allows the code to output in different files: like txt, pdf, zip, etc...
    # |> put_resp_content_type("text/plain")

    |> assign(:var, "I am a string")
    |> render("index.html")
  end

  def show(conn, %{"messenger" => messenger}) do
    render conn, "show.html", messenger: messenger
  end

  def practice(conn, _params) do
    food = %{"pizza" => 1, "donut" => 2, "sushi" => 3 , "burger" => 4, "pretzel" => 5}
    conn
    |> assign(:var, food)
    |> render("practice.html")
  end
end
