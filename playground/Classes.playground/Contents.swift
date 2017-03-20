import UIKit


//Criando modelo da classe pessoa
class Pessoa {

    // atributos da classe PESSOA
    private var nome : String!
    private var idade : Int?
    
    //Construtor da classe sem parametros
    init() {
        //regra de negocio
        self.nome = "usuario anonimo"
    }
    
    //Contrutor da classe com parametros
    init(nome: String, idade: Int) {
        //regra de negocio
        self.nome = nome
        self.idade = idade
    }
    
    //funcao / metodo da classe PESSOA sem parametros
    func getNome() -> String {
        //regra de negocio
        return self.nome
    }
    
    //funcao / metodo da classe PESSOA com parametros
    func getNome(sobrenome: String) -> String {
        //regra de negocio
        return self.nome + " " + sobrenome
    }
    
    //obs: Quando temos dois ou mais metodos/funcoes com o mesmo nome e apenas os parametros diferentes o nome dado é sobreescrita de metodo/parametro
    
    
}


// criando instancia de PESSOA com construtor com parametros
var pessoa1 = Pessoa(nome: "Bruno", idade: 22)
print(pessoa1.getNome())

// criando instancia de PESSOA com contrutor sem parametros
var pessoa2 = Pessoa()

//acessando metodo GETNOME sem parametros
print(pessoa2.getNome())

//acessando metodo GETNOME com parametro
print(pessoa1.getNome(sobrenome: "cruz"))

