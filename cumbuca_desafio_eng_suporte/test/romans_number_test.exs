defmodule RomanConverterNumberTest do
  use ExUnit.Case
  alias Roman

  @tag :unit
  test "converts 1 to I" do
    assert Roman.to_roman(1) == "I"
  end

  @tag :unit
  test "converts 4 to IV" do
    assert Roman.to_roman(4) == "IV"
  end

  @tag :unit
  test "converts 5 to V" do
    assert Roman.to_roman(5) == "V"
  end

  @tag :unit
  test "converts 9 to IX" do
    assert Roman.to_roman(9) == "IX"
  end

  @tag :unit
  test "converts 10 to X" do
    assert Roman.to_roman(10) == "X"
  end

  @tag :unit
  test "converts 58 to LVIII" do
    assert Roman.to_roman(58) == "LVIII"
  end

  @tag :unit
  test "converts 1990 to MCMXC" do
    assert Roman.to_roman(1990) == "MCMXC"
  end

  @tag :unit
  test "converts 2023 to MMXXIII" do
    assert Roman.to_roman(2023) == "MMXXIII"
  end

  @tag :unit
  test "converts 3999 to MMMCMXCIX" do
    assert Roman.to_roman(3999) == "MMMCMXCIX"
  end
end
