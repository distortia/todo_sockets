defmodule TodoSocketWeb.PageController do
  use TodoSocketWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
