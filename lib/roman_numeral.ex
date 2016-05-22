defmodule RomanNumeral do
  @moduledoc """
  Methods for creating Roman numberals from integers
  """

  @doc """
  Create a Roman numeral representation of the integer
  """
  @spec create(non_neg_integer) :: String.t
  def create(0), do: "nvlla"
  def create(n) when is_integer(n) and n > 0, do: do_create(n, "")

  @spec do_create(non_neg_integer, String.t) :: String.t
  defp do_create(0, result), do: result
  defp do_create(n, result) when is_integer(n) and n < 5, do: do_create(n - 1, result <> "I")
  defp do_create(n, result) when is_integer(n) and n < 10, do: do_create(n - 5, result <> "V")
  defp do_create(n, result) when is_integer(n) and n < 50, do: do_create(n - 10, result <> "X")
  defp do_create(n, result) when is_integer(n) and n < 100, do: do_create(n - 50, result <> "L")
  defp do_create(n, result) when is_integer(n) and n < 500, do: do_create(n - 100, result <> "C")
  defp do_create(n, result) when is_integer(n) and n < 1000, do: do_create(n - 500, result <> "D")
  defp do_create(n, result) when is_integer(n), do: do_create(n - 1000, result <> "M")
end
