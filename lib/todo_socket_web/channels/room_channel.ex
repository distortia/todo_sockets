defmodule TodoSocketWeb.RoomChannel do
  use Phoenix.Channel

  def join("todo:lobby", _message, socket) do
    {:ok, socket}
  end

  def handle_in("new_item", %{"body" => body, "id" => id}, socket) do
    broadcast! socket, "new_item", %{body: body, id: id}
    {:noreply, socket}
  end

  def handle_in("delete_item", %{"id" => id}, socket) do
    broadcast! socket, "delete_item", %{id: id}
    {:noreply, socket}
  end

end