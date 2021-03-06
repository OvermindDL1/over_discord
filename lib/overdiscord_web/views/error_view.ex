defmodule Overdiscord.Web.ErrorView do
  use Overdiscord.Web, :view

  require Logger

  # If you want to customize a particular status code
  # for a certain format, you may uncomment below.
  def render("500.html", assigns) do
    Logger.error("500 Error assigns: #{inspect(assigns)}")
    code = abs(:erlang.monotonic_time())
    Logger.error("Error code:  #{code}")
    "Unknown error, report this to OvermindDL1 with the code of #{code}"
  end

  # By default, Phoenix returns the status message from
  # the template name. For example, "404.html" becomes
  # "Not Found".
  def template_not_found(template, _assigns) do
    Phoenix.Controller.status_message_from_template(template)
  end
end
