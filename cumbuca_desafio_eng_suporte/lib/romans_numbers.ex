defmodule Roman do

  @spec to_roman(integer) :: String.t()
  def to_roman(number) when number >= 1 do
    roman_mapping()
    |> Enum.reduce({number, ""}, fn {value, roman}, {num, acc} ->
      quotient = div(num, value)
      remainder = rem(num, value)
      {remainder, acc <> String.duplicate(roman, quotient)}
    end)
    |> elem(1)
  end

  defp roman_mapping do
    [
      {1000, "M"},
      {900, "CM"},
      {500, "D"},
      {400, "CD"},
      {100, "C"},
      {90, "XC"},
      {50, "L"},
      {40, "XL"},
      {10, "X"},
      {9, "IX"},
      {5, "V"},
      {4, "IV"},
      {1, "I"}
    ]
  end
end
