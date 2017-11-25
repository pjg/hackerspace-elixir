defmodule Handler do
  def call(request) do
    request
    |> format_response()
  end

  def format_response(request) do
    """
    HTTP/1.1 200 OK
    Content-Type: text/html; charset=utf-8
    Content-Length: 7

    OK Łódź
    """
  end
end
