defmodule TodoSocketWeb.RoomChannel do
  use Phoenix.Channel

  def join("todo:lobby", _message, socket) do
    {:ok, socket}
  end

  def handle_in("new_item", %{"body" => body}, socket) do
    broadcast! socket, "new_item", %{body: body}
    {:noreply, socket}
  end

  def handle_in("delete_item", %{"body" => body}, socket) do
    IO.inspect "here"
    broadcast! socket, "delete_item", %{body: body}
    {:noreply, socket}
  end

end