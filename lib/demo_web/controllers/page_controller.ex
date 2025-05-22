defmodule DemoWeb.PageController do
  use DemoWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def demo(conn, _params) do
    html(conn,"""
        <h1>About</h1>
    """)
  end
end
