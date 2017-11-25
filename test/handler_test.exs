defmodule HandlerTest do
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
    Content-Type: text/html; charset=utf-8
    Content-Length: 10

    OK Łódź
    """

    response = Handler.call(request)

    assert response == expected_response
  end
end
