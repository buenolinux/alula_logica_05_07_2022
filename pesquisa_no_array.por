programa {
    inteiro vet[3]
    inteiro num, pos
  funcao inicio() {
    // criar array e preencher
    para(inteiro i =0; i<3; i++)
    {
        escreva("Entre com um valor")
        leia(vet[i])
        limpa()
    }
    //entrar com valor a pesquisar
    escreva("Digite um número para pesquisa: ")
    leia(num)
    pos =0

    enquanto(pos <2 e vet[pos] !=num)
    {
        pos = pos +1
    }
    se(vet[pos]==num)
    {
        escreva("Valor encontrado na posição " + pos)
    }
    senao
    {
        escreva("Número não encontrado no Array ")
    }

  }
  
}
