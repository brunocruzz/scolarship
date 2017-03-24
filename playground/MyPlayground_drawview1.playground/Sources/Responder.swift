import Foundation
import UIKit


public class Control : UIViewController {
    var state1 = 0
    var state2 = 0
    var state3 = 0
    var statefinal = 0
    var shoeCircle1, shoeCircle2, shoeCircle3, shoeCircle4, shoeCircle5, shoeCircle6, shoeCircle7, shoeCircle8: ShoeCircle!
    var backgroung: UIImageView!

    
    let arrow = UIButton(frame :CGRect(x: 7, y: 450, width: 120, height: 120))
    let imagearrow = UIImage(named: "arrow.png")
    
    let text1 = UIButton(frame :CGRect(x: 145, y: 530.5, width: 102, height: 100))
    let imagetext1 = UIImage(named: "text1.png")
    
    let arrow2 = UIButton(frame :CGRect(x: 267, y: 450, width: 100, height: 120))
    let imagearrow2 = UIImage(named: "arrow2.png")
    
    let text2 = UIButton(frame :CGRect(x: 145, y: 531, width: 102, height: 100))
    let imagetext2 = UIImage(named: "text2.png")
    
    let text3 = UIButton(frame :CGRect(x: 137, y: 535, width: 120, height: 90))
    let imagetext3 = UIImage(named: "text3.png")
    
    let text4 = UIButton(frame :CGRect(x: 130, y: 535, width: 140, height: 95))
    let imagetext4 = UIImage(named: "text4.png")
    
    let text5 = UIButton(frame :CGRect(x: 130, y: 535, width: 140, height: 95))
    let imagetext5 = UIImage(named: "text5.png")
    
    let text6 = UIButton(frame :CGRect(x: 125, y: 535, width: 140, height: 95))
    let imagetext6 = UIImage(named: "text6.png")
    
    let text7 = UIButton(frame :CGRect(x: 142, y: 533, width: 110, height: 95))
    let imagetext7 = UIImage(named: "text7.png")
    
    let text8 = UIButton(frame :CGRect(x: 135, y: 533, width: 125, height: 95))
    let imagetext8 = UIImage(named: "text8.png")
    
    let text9 = UIButton(frame :CGRect(x: 127, y: 50, width: 135, height: 170))
    let imagetext9 = UIImage(named: "text9.png")
    
    let textpresentation = UIButton(frame :CGRect(x: 10, y: 65, width: 350, height: 100))
    let imagetextpresentation = UIImage(named: "textpresentation.png")
    
    let textwelcome = UIButton(frame :CGRect(x: 15, y: 240, width: 350, height: 210))
    let imagetextwelcome = UIImage(named: "textwelcome.png")
    
    let playbutton = Button(CGRect:CGRect(x: 160, y: 550, width: 70, height: 65), image: UIImage(named: "playbutton.png")!, id: "play")
    let restartbutton = Button(CGRect:CGRect(x: 17, y: 15, width: 50, height: 35), image: UIImage(named: "restartbutton.png")!, id: "botao")
    let nextstepbutton = Button(CGRect:CGRect(x: 142, y: 80, width: 100, height: 60), image: UIImage(named: "nextstep.png")!, id: "nextstepbutton")
    
    var lace1 = UIImageView.init(frame: CGRect(x: 260, y: 275, width: 100, height: 17))
    var lace2 = UIImageView.init(frame: CGRect(x: 27, y: 275, width: 100, height: 17))
    var lace3 = UIImageView.init(frame: CGRect(x: 74, y: 190, width: 250, height: 100))
    var lace4 = UIImageView.init(frame: CGRect(x: 65, y: 185, width: 265, height: 105))
    var lace5 = UIImageView.init(frame: CGRect(x: 120, y: 157, width: 160, height: 130))
    var lace6 = UIImageView.init(frame: CGRect(x: 115, y: 158, width: 192, height: 130))
    var lace7 = UIImageView.init(frame: CGRect(x: 75, y: 220, width: 250, height: 70))
    
    let imagelastbutton = UIImage.init(named: "nextstep.png")
    let line1 = CAShapeLayer()
    let line2 = CAShapeLayer()
    let line3 = CAShapeLayer()
    let line4 = CAShapeLayer()
    let line5 = CAShapeLayer()
    let line6 = CAShapeLayer()
    let line7 = CAShapeLayer()
    
    
    /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    
    public init (){
        super.init(nibName: nil, bundle: nil)
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(Control.tap(GC:))))

        
    }
    /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    
    public override func viewDidLoad() {
       
        view = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 450.0, height: 600.0))
        view.backgroundColor = UIColor.white
        
        
        backgroung = UIImageView.init(image: UIImage.init(named: "Group.png"))
        backgroung.frame = CGRect(x: 70, y: 0.0, width: 250.0, height: 650.0)
        view.addSubview(backgroung)
        backgroung.alpha = 0.15
        
        setup()
        setupinitial()
        
        
    }
    
    /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    
    public override func viewDidAppear(_ animated: Bool) {
        
        
        
    }
    
    /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    
    public func tap (GC:UIGestureRecognizer){
        
        view.addSubview(restartbutton)
        //restartbutton.isHidden = false
        
        let tap = view.hitTest(GC.location(in: view), with: nil)
        
        
        if tap is Button{
        
            
             let btn = tap as? Button
            if btn?.getID() == "play" {
                destroysetupinitial()
                state1 = 0
                state2 = 0
            }else{
                
               setupinitial()
               destroysetupinitial()
            }
            
            
        }
        
            let shoecircle = tap as? ShoeCircle
        
        
            if shoecircle?.getId() == 1 {
                
                state1 = 1
                arrow.removeFromSuperview()
                text1.removeFromSuperview()
                view.addSubview(arrow2)
                view.addSubview(text2)
                
            } else if shoecircle?.getId() == 2 && state1 == 1 {
              
               drawLineFromPoint(start: CGPoint.init(x: 116, y: 435), toPoint: CGPoint.init(x: 270, y: 436), ofColor: UIColor.purple, inView: view, shapeLayer: line1)
                
                    state2 = 2
                    arrow2.removeFromSuperview()
                    text2.removeFromSuperview()
                    view.addSubview(text3)
                
            }
            else if shoecircle?.getId() == 4 && state2 == 2{
                
                drawLineFromPoint(start: CGPoint.init(x: 270, y: 436), toPoint: CGPoint.init(x: 120, y: 383), ofColor: UIColor.red, inView: view, shapeLayer: line2)
               
                    state2 = 4
                    text3.removeFromSuperview()
                
            }else if shoecircle?.getId() == 6 && state1 == 3{
                drawLineFromPoint(start: CGPoint.init(x: 265, y: 383), toPoint: CGPoint.init(x: 120, y: 333), ofColor: UIColor.green, inView: view, shapeLayer: line3)
                state1 = 6
                
                
                
            }else if shoecircle?.getId() == 3 && state1 == 1{
                
                drawLineFromPoint(start: CGPoint.init(x: 116, y: 435), toPoint: CGPoint.init(x: 265, y: 383), ofColor: UIColor.blue, inView: view, shapeLayer: line4)
                    state1 = 3
                    text3.removeFromSuperview()
                
            }else if shoecircle?.getId() == 5 && state2 == 4{
                
                drawLineFromPoint(start: CGPoint.init(x: 120, y: 385), toPoint: CGPoint.init(x: 265, y: 333), ofColor: UIColor.yellow, inView: view, shapeLayer: line5)
            state2 = 5
        }
            else if shoecircle?.getId() == 8 && state2 == 5{
                
                drawLineFromPoint(start: CGPoint.init(x: 265, y: 335), toPoint: CGPoint.init(x: 153, y: 285), ofColor: UIColor.cyan, inView: view, shapeLayer: line6)
                state2 = 8
                lace2.image = UIImage (named: "lace2")
                view.addSubview(lace2)

                
            }
            else if shoecircle?.getId() == 7 && state1 == 6{
                
                drawLineFromPoint(start: CGPoint.init(x: 120, y: 333), toPoint: CGPoint.init(x: 240, y: 285), ofColor: UIColor.orange, inView: view, shapeLayer: line7)
                state1 = 7
                lace1.image = UIImage (named: "lace1")
                view.addSubview(lace1)
            }
        
            state3 = state1 + state2
        
        if state3 == 15 {
            
            
            partefinal( GC: GC )
        }
        
        
        
        }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    
    func drawLineFromPoint(start : CGPoint, toPoint end:CGPoint, ofColor lineColor: UIColor, inView view:UIView, shapeLayer: CAShapeLayer) {
        
            //design the path
            let path = UIBezierPath()
            path.move(to: start)
            path.addLine(to: end)
        
            //design path in layer
          //  let shapeLayer = CAShapeLayer()
            shapeLayer.path = path.cgPath
            shapeLayer.strokeColor = lineColor.cgColor
            shapeLayer.lineWidth = 6
            shapeLayer.cornerRadius = 1
        
            view.layer.addSublayer(shapeLayer)
        
        
        }
    
    /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    
    private let widthShoeCircle = 35
    private let heightShoeCircle = 28

    public func setup (){
    
        
        
        shoeCircle1 = ShoeCircle(image: UIImage.init(named: "buraco_cadarco_final.png")!, id: 1)
        shoeCircle1.frame = CGRect(x: 102, y: 420, width: widthShoeCircle, height: heightShoeCircle)
        
        
        shoeCircle2 = ShoeCircle(image: UIImage.init(named: "buraco_cadarco_final.png")!, id: 2)
        shoeCircle2.frame = CGRect(x: 250, y: 422, width: widthShoeCircle, height: heightShoeCircle)
        //shoeCircle2.alpha = 0.15
        
        shoeCircle3 = ShoeCircle(image: UIImage.init(named: "buraco_cadarco_final.png")!, id: 3)
        shoeCircle3.frame = CGRect(x: 246, y: 370, width: widthShoeCircle, height: heightShoeCircle)
        //shoeCircle3.alpha = 0.15
        
        shoeCircle4 = ShoeCircle(image: UIImage.init(named: "buraco_cadarco_final.png")!, id: 4)
        shoeCircle4.frame = CGRect(x: 106, y: 370, width: widthShoeCircle, height: heightShoeCircle)
        //shoeCircle4.alpha = 0.15
        
        shoeCircle5 = ShoeCircle(image: UIImage.init(named: "buraco_cadarco_final.png")!, id: 5)
        shoeCircle5.frame = CGRect(x: 245, y: 320, width: widthShoeCircle, height: heightShoeCircle)
        //shoeCircle5.alpha = 0.15
        
        shoeCircle6 = ShoeCircle(image: UIImage.init(named: "buraco_cadarco_final.png")!, id: 6)
        shoeCircle6.frame = CGRect(x: 108, y: 320, width: widthShoeCircle, height: heightShoeCircle)
        //shoeCircle6.alpha = 0.15
        
        shoeCircle7 = ShoeCircle(image: UIImage.init(named: "buraco_cadarco_final.png")!, id: 7)
        shoeCircle7.frame = CGRect(x: 245, y: 270, width: widthShoeCircle, height: heightShoeCircle)
        //shoeCircle7.alpha = 0.15
        
        shoeCircle8 = ShoeCircle(image: UIImage.init(named: "buraco_cadarco_final.png")!, id: 8)
        shoeCircle8.frame = CGRect(x: 108, y: 270, width: widthShoeCircle, height: heightShoeCircle)
        //shoeCircle8.alpha = 0.15
        
        arrow.setImage(imagearrow, for: UIControlState.normal)
        //view.addSubview(arrow)
        
        text1.setImage(imagetext1, for: UIControlState.normal)
        //view.addSubview(text1)
        
        arrow2.setImage(imagearrow2, for: UIControlState.normal)
        
        text2.setImage(imagetext2, for: UIControlState.normal)
        
        text3.setImage(imagetext3, for: UIControlState.normal)
        
        
        
        view.addSubview(shoeCircle1)
        view.addSubview(shoeCircle2)
        view.addSubview(shoeCircle3)
        view.addSubview(shoeCircle4)
        view.addSubview(shoeCircle5)
        view.addSubview(shoeCircle6)
        view.addSubview(shoeCircle7)
        view.addSubview(shoeCircle8)
        
        
        
        
    }
    
    /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    
    func setupinitial(){
    
        statefinal = 0
        
        textpresentation.setImage(imagetextpresentation, for: UIControlState.normal)
        view.addSubview(textpresentation)
        
        
        textwelcome.setImage(imagetextwelcome, for: UIControlState.normal)
        view.addSubview(textwelcome)
        
        view.addSubview(playbutton)
        view.addSubview(restartbutton)
        restartbutton.removeFromSuperview()
        
        text1.removeFromSuperview()
        text2.removeFromSuperview()
        text3.removeFromSuperview()
        text4.removeFromSuperview()
        text5.removeFromSuperview()
        text6.removeFromSuperview()
        text6.removeFromSuperview()
        text7.removeFromSuperview()
        text8.removeFromSuperview()
        text9.removeFromSuperview()
        
        arrow.removeFromSuperview()
        arrow2.removeFromSuperview()
        
        nextstepbutton.removeFromSuperview()
        
        playbutton.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(Control.tap(GC:))))
        restartbutton.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(setupinitial)))
        
        shoeCircle1.alpha = 0.15
        shoeCircle2.alpha = 0.15
        shoeCircle3.alpha = 0.15
        shoeCircle4.alpha = 0.15
        shoeCircle5.alpha = 0.15
        shoeCircle6.alpha = 0.15
        shoeCircle7.alpha = 0.15
        shoeCircle8.alpha = 0.15
        backgroung.alpha = 0.15

        lace1.removeFromSuperview()
        lace2.removeFromSuperview()
        lace3.removeFromSuperview()
        lace4.removeFromSuperview()
        lace5.removeFromSuperview()
        lace6.removeFromSuperview()
        lace7.removeFromSuperview()
        
        line1.removeFromSuperlayer()
        line2.removeFromSuperlayer()
        line3.removeFromSuperlayer()
        line4.removeFromSuperlayer()
        line5.removeFromSuperlayer()
        line6.removeFromSuperlayer()
        line7.removeFromSuperlayer()
        
            
    }
    
    /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    
    func destroysetupinitial(){
    
        textpresentation.removeFromSuperview()
        textwelcome.removeFromSuperview()
        playbutton.removeFromSuperview()
        shoeCircle1.alpha = 1
        shoeCircle2.alpha = 1
        shoeCircle3.alpha = 1
        shoeCircle4.alpha = 1
        shoeCircle5.alpha = 1
        shoeCircle6.alpha = 1
        shoeCircle7.alpha = 1
        shoeCircle8.alpha = 1
        backgroung.alpha = 1
        view.addSubview(text1)
        view.addSubview(arrow)
        
    }
    
    /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    
    func partefinal ( GC:UIGestureRecognizer ){
    
        
        view.addSubview(nextstepbutton)
        nextstepbutton.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(Control.partefinal(GC:))))
        
        
        let tap2 = view.hitTest(GC.location(in: view), with: nil)
        if tap2 is Button{
            
            let btn2 = tap2 as? Button
            
            if btn2?.getID() == "nextstepbutton" {
            
            lace1.removeFromSuperview()
            lace2.removeFromSuperview()
                
                if statefinal == 0{
            
                    lace3.image = UIImage(named: "lace3")
                    view.addSubview(lace3)
                    text4.setImage(imagetext4, for: UIControlState.normal)
                    view.addSubview(text4)
                    statefinal = 1
                    
                }else if statefinal == 1{
                    text4.removeFromSuperview()
                    lace3.removeFromSuperview()
                    lace4.image = UIImage(named: "lace4")
                    view.addSubview(lace4)
                    text5.setImage(imagetext5, for: UIControlState.normal)
                    view.addSubview(text5)
                    statefinal = 2
                
                }else if statefinal == 2{
                    text5.removeFromSuperview()
                    lace4.removeFromSuperview()
                    lace5.image = UIImage(named: "lace5")
                    view.addSubview(lace5)
                    text6.setImage(imagetext6, for: UIControlState.normal)
                    view.addSubview(text6)
                    statefinal = 3
                    
                }else if statefinal == 3{
                    text6.removeFromSuperview()
                    lace5.removeFromSuperview()
                    lace6.image = UIImage(named: "lace6")
                    view.addSubview(lace6)
                    text7.setImage(imagetext7, for: UIControlState.normal)
                    view.addSubview(text7)
                    statefinal = 4
                    
                }else if statefinal == 4{
                    text7.removeFromSuperview()
                    lace6.removeFromSuperview()
                    lace7.image = UIImage(named: "lace7")
                    view.addSubview(lace7)
                    text8.setImage(imagetext8, for: UIControlState.normal)
                    view.addSubview(text8)
                    text9.setImage(imagetext9, for: UIControlState.normal)
                    view.addSubview(text9)
                    nextstepbutton.removeFromSuperview()
                    
                }
                
            }
            
    }
    
}
    
}


