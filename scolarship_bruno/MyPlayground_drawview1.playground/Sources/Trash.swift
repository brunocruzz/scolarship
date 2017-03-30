//import Foundation


//
//
//
//
//let linha = UIButton(frame: CGRect(x: 66, y: 581, width: 220, height: 7.0))
////circle.center = containerView.center
//linha.layer.cornerRadius = 1
//linha.backgroundColor = UIColor.blue
//
//
//
//
//
//func drawLineFromPoint(start : CGPoint, toPoint end:CGPoint, ofColor lineColor: UIColor, inView view:UIView) {
//
//    //design the path
//    let path = UIBezierPath()
//    path.move(to: start)
//    path.addLine(to: end)
//
//    //design path in layer
//    let shapeLayer = CAShapeLayer()
//    shapeLayer.path = path.cgPath
//    shapeLayer.strokeColor = lineColor.cgColor
//    shapeLayer.lineWidth = 7.5
//    shapeLayer.cornerRadius = 1
//
//    view.layer.addSublayer(shapeLayer)
//}
//
//
//
//
//
//
//
//
///*
//let linha1 = UIButton(frame: CGRect(x: 230, y: 430, width: 220, height: 7.0))
//linha1.point(inside: CGPoint.init(x: 30, y: 70), with: nil)
//
////circle.center = containerView.center
//linha1.layer.cornerRadius = 10
//linha1.backgroundColor = UIColor.blue
//*/
//
////let imagecircle = UIImage(named: "buraco cadarco")
////circle.setImage(imagecircle, for: UIControlState.normal)
//
//
//
//
//class Responder : NSObject {
//
//    var state = false
//    var state1 = false
//
//    func action(){
//    print("vc apertou o botao da discordia")
//        state = true
//
//    }
//
//
//    func action2(){
//        if state == true {
//            state1 = true
//            containerView.addSubview(linha)
//
//            print("vc apertou os dois botoes da discordia")
//
//        }
//    }
//
//    func action3(){
//        if state1==true{
//            _ = drawLineFromPoint(start: CGPoint.init(x: 285, y: 585), toPoint: CGPoint.init(x: 71, y: 462), ofColor: UIColor.blue, inView: containerView)
//
//    }
//    }
//
//
//}
//
//
//
//
//
//
//
//
//let responder = Responder ()
//
//circle.addTarget(responder, action: #selector(Responder.action), for: .touchDown)
//circle2.addTarget(responder, action: #selector(Responder.action2), for: .touchDown)
//circle4.addTarget(responder, action: #selector(Responder.action3), for: .touchDown)
//
//
////containerView.addSubview(linha1)
//
//
//
//
//
//
//
//
//
//
////let startingColor = UIColor(red: (150.0/255.0), green: (126/255.0), blue: (234/255.0), alpha: 1.0)
////circle.backgroundColor = UIImageView(named: "botao_pronto_400x400.jpg")
//
//
//
//
//
//
//
///*
//let elemento = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 200.0, height: 10.0))
//elemento.center = containerView.center
//elemento.layer.cornerRadius = 2.0
//elemento.backgroundColor = UIColor.black
//
//containerView.addSubview(elemento)
//
//
//let circle = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 50.0, height: 50.0))
//circle.center = containerView.center
//circle.layer.cornerRadius = 25.0
//
//let startingColor = UIColor(red: (150.0/255.0), green: (126/255.0), blue: (234/255.0), alpha: 1.0)
//circle.backgroundColor = startingColor
//
//containerView.addSubview(circle);
//
//
//let square = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 50.0, height: 50.0))
//square.center = containerView.center
//square.layer.cornerRadius = 30.0
//
//square.backgroundColor = UIColor.yellow
//
//containerView.addSubview(square)
//
//
//
//
//UIView.animate(withDuration: 10.0, animations: { () -> Void in
//
//    let endingColor = UIColor(red: (26.0/255.0), green: (200/255.0), blue: (24.0/255.0), alpha: 1.0)
//    circle.backgroundColor = endingColor
//
//    let scaleTransform = CGAffineTransform(scaleX: 5.0, y: 5.0)
//
//    circle.transform = scaleTransform
//
//    let rotationTransform = CGAffineTransform(rotationAngle: 3.14)
//
//    square.transform = rotationTransform
//
//    let animacao = CGAffineTransform(translationX: -150, y: 200)
//
//
//    elemento.transform = animacao
//
//})
//*/
