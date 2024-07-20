defmodule CumbucaDesafioEngSuporteTest do
  use ExUnit.Case
  import ExUnit.CaptureIO
  doctest CumbucaDesafioEngSuporte

  @tag :unit
  test "prints names with correct Roman numeral suffix" do
    input_names = ["alice", "bob", "alice", "bob", "alice"]

    expected_output = "alice I\nbob I\nalice II\nbob II\nalice III\n"

    # Capture IO output
    output = capture_io(fn ->
      CumbucaDesafioEngSuporte.processar_nomes(input_names)
    end)

    assert output == expected_output
  end
end
