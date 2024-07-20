defmodule CumbucaDesafioEngSuporte do
  def main(_args) do
    IO.puts("Lista de Reis de Cumbúquia\nEsse Programa serve para listar em ordem de inserção pelo " <>
    "terminal os nomes dos reis de Cumbúquia, passando para eles um numeral romano para a ordem de cada um. " <>
    "Para inserir um nome de um rei digite o nome no terminal Enter para inseri-lo")
    nomes = coletar_nomes()
    processar_nomes(nomes)
  end

  def coletar_nomes do
    IO.puts("Digite o nome. Pressione Enter sem digitar nada para parar.")
    coletar_nomes_recursivos([])
  end

  @spec coletar_nomes_recursivos(any()) :: list()
  def coletar_nomes_recursivos(nomes) do
    nome = IO.gets("> ") |> String.trim()

    case nome do
      "" ->
        Enum.reverse(nomes)
      _ ->
        coletar_nomes_recursivos([String.downcase(nome) | nomes])
    end
  end

  def processar_nomes(nomes) do
    Enum.reduce(nomes, %{}, fn nome, contagem ->
      ocorrencia = Map.get(contagem, nome, 0) + 1
      novo_contagem = Map.put(contagem, nome, ocorrencia)

      sufixo = case ocorrencia do
        _ -> Roman.to_roman(ocorrencia)
      end

      IO.puts("#{nome} #{sufixo}")
      novo_contagem
    end)
  end

end
