programa {
    inteiro vet[3]
    inteiro num, pos, qtd = 2
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
    
    pesquisa_vetor( num)
    escreva(" \n")
    ordena(vet,2, verdadeiro)
    exibir(qtd, vet)
   

  }
    funcao ordena(inteiro vet[],inteiro qtd, logico teste)
    {
        para(inteiro i= 0; i<= qtd; i++)
        {
            para(inteiro x = i+1; x <= qtd; x++)
            {
                inteiro bkp
                se(vet[i]> vet[x])
                {
                    bkp     = vet[i]
                    vet[i]  = vet[x]
                    vet[x]  = bkp
                }
                
            }
        }
    }

    funcao exibir(inteiro qtd, inteiro pos[])
    {
        para(inteiro i=0; i<= qtd; i++)
        {
            escreva("(",pos[i] +") ")
        }
    }

  funcao pesquisa_vetor( inteiro num)
  {
    inteiro pos = 0
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
