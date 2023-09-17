Invariant:   endereco-nao-financeiro
Description: "Endereço não pode ser para uso financeiro"
Severity:    #error
Expression:  "address.where(use = 'billing').empty()"