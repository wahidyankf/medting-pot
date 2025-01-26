defmodule MedtingpotCore.ErrorHTML do
  use Phoenix.Component

  embed_templates "error_html/*"

  def render(template, _assigns) do
    Phoenix.Controller.status_message_from_template(template)
  end
end
