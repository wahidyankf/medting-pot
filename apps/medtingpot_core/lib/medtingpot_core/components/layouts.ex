defmodule MedtingpotCore.Layouts do
  use Phoenix.Component

  def root(assigns) do
    ~H"""
    <!DOCTYPE html>
    <html lang="en">
      <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <title>MedtingPot</title>
      </head>
      <body>
        <%= @inner_content %>
      </body>
    </html>
    """
  end
end
