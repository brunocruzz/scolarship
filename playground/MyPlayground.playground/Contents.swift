import UIKit
import Foundation
import PlaygroundSupport

let main = UIImageView(frame :CGRect(x: 0, y: 0, width: 300, height: 500))

main.image = UIImage(named: "Captura de Tela 2017-03-14 às 15.51.07")

PlaygroundPage.current.liveView = main





let botao1 = UIButton(frame :CGRect(x: 0, y: 0, width: 200, height: 200))
let imagebotao1 = UIImage(named: "botao_pronto_400x400.jpg")

class resposta : NSObject {
   
    func acao(){
     print(" vc eh uma cara revoltado")
    }

    
}






//botao1.addTarget(resposta, acao: #selector(resposta.acao), for: .touchDown)

botao1.setImage(imagebotao1, for: UIControlState.normal)

main.addSubview(botao1)
