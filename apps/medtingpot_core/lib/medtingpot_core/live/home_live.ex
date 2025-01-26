defmodule MedtingpotCore.HomeLive do
  use Phoenix.LiveView

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <h1>Hello World!</h1>
    """
  end
end
