defmodule ServerTest do
  use ExUnit.Case

  test "returns 200 http code" do
    request = """
    GET / HTTP/1.1
    Host: example.com
    User-Agent: Browser/1.0
    Accept: */*
    """

    expected_response = """
    HTTP/1.1 200 OK
    Content-Type: text/html
    Content-Length: 4

    OK
    """

    response = Server.call(request)

    assert response == expected_response
  end
end
