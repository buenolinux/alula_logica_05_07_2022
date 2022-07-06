programa {
    inteiro vet[10]
    inteiro num, pos, qtd = 9, teste_logico
    
  funcao inicio() {
    // criar array e preencher
    para(inteiro i =0; i<qtd; i++)
    {
        escreva("Entre com um valor")
        leia(vet[i])
        limpa()
    }
    //entrar com valor a pesquisar
    escreva("Digite um número para pesquisa: ")
    leia(num)
	escreva("Digite 1 para ordem crescente ou 0 decrescente: ")
    leia(teste_logico)
    
    pesquisa_vetor( num,qtd)
    escreva(" \n")
    se(teste_logico ==1)
    {	
    	ordena(vet,qtd, verdadeiro)
    	exibir(qtd, vet)
    }senao
    {
    	ordena(vet,qtd, falso)
    	exibir(qtd, vet)
    	}

  }
    funcao ordena(inteiro vet[],inteiro qtd, logico teste)
    {
        para(inteiro i= 0; i<= qtd; i++)
        {
            para(inteiro x = i+1; x <= qtd; x++)
            {
                inteiro bkp
                se(teste == verdadeiro)
                {
               	 se(vet[i]> vet[x])
                	{
                    	bkp     = vet[i]
                    	vet[i]  = vet[x]
                    	vet[x]  = bkp
                	} 	
           	}
           	senao
           	{
           		se(vet[i]< vet[x])
                	{
                    	bkp     = vet[i]
                    	vet[i]  = vet[x]
                   		 vet[x]  = bkp
                	}	
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

  funcao pesquisa_vetor( inteiro num, inteiro qtd)
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
