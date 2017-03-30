import Foundation
import UIKit


public class Control : UIViewController {
    var state1 = 0
    var state2 = 0
    var state3 = 0
    var statefinal = 0
    var shoeCircle1, shoeCircle2, shoeCircle3, shoeCircle4, shoeCircle5, shoeCircle6, shoeCircle7, shoeCircle8: ShoeCircle!
    var backgroung: UIImageView!

    
    let arrow = UIButton(frame :CGRect(x: 200, y: 95, width: 120, height: 120))
    let imagearrow = UIImage(named: "arrow22.png")
    
    let text1 = UIButton(frame :CGRect(x: 142, y: 250, width: 102, height: 100))
    let imagetext1 = UIImage(named: "text12.png")
    
    let arrow2 = UIButton(frame :CGRect(x: 220, y: 388, width: 100, height: 120))
    let imagearrow2 = UIImage(named: "arrow222.png")
    
    let text2 = UIButton(frame :CGRect(x: 140, y: 250, width: 102, height: 100))
    let imagetext2 = UIImage(named: "text22.png")
    
    let text3 = UIButton(frame :CGRect(x: 140, y: 250, width: 93, height: 100))
    let imagetext3 = UIImage(named: "text32.png")
    
    let text4 = UIButton(frame :CGRect(x: 140, y: 237, width: 95, height: 140))
    let imagetext4 = UIImage(named: "text42.png")
    
    let text5 = UIButton(frame :CGRect(x: 140, y: 237, width: 95, height: 140))
    let imagetext5 = UIImage(named: "text52.png")
    
    let text6 = UIButton(frame :CGRect(x: 140, y: 237, width: 95, height: 140))
    let imagetext6 = UIImage(named: "text62.png")
    
    let text7 = UIButton(frame :CGRect(x: 143, y: 247, width: 95, height: 110))
    let imagetext7 = UIImage(named: "text72.png")
    
    let text8 = UIButton(frame :CGRect(x: 143, y: 245, width: 95, height: 125))
    let imagetext8 = UIImage(named: "text82.png")
    
    let text9 = UIButton(frame :CGRect(x: 583, y: 230, width: 175, height: 140))
    let imagetext9 = UIImage(named: "text92.png")
    
    let textpresentation = UIButton(frame :CGRect(x: 485, y: 125, width: 470, height: 340))
    let imagetextpresentation = UIImage(named: "textpresentation2.png")
    
    let textwelcome = UIButton(frame :CGRect(x: 280, y: 203, width: 350, height: 210))
    let imagetextwelcome = UIImage(named: "textwelcome2.png")
    
    let playbutton = Button(CGRect:CGRect(x: 160, y: 270, width: 70, height: 65), image: UIImage(named: "playbutton2.png")!, id: "play")
    
    let restartbutton = Button(CGRect:CGRect(x: 830, y: 15, width: 60, height: 70), image: UIImage(named: "restartbutton2.png")!, id: "botao")
    let nextstepbutton = Button(CGRect:CGRect(x: 670, y: 245, width: 60, height: 100), image: UIImage(named: "nextstep2.png")!, id: "nextstepbutton")
    
    var lace1 = UIImageView.init(frame: CGRect(x: 495, y: 372, width: 17, height: 100))
    var lace2 = UIImageView.init(frame: CGRect(x: 495, y: 124, width: 17, height: 100))
    var lace3 = UIImageView.init(frame: CGRect(x: 499, y: 168, width: 100, height: 275))
    var lace4 = UIImageView.init(frame: CGRect(x: 499, y: 157, width: 100, height: 295))
    var lace5 = UIImageView.init(frame: CGRect(x: 501, y: 214, width: 115, height: 182))
    var lace6 = UIImageView.init(frame: CGRect(x: 501, y: 214, width: 115, height: 213))
    var lace7 = UIImageView.init(frame: CGRect(x: 501, y: 170, width: 75, height: 268))
    
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
        preferredContentSize = CGSize(width: 944.0, height: 561.5)
        
        
    }
    /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    
    public override func viewDidLoad() {
       
        
        view.backgroundColor = UIColor.white
        
        
        
        backgroung = UIImageView.init(image: UIImage.init(named: "Group2.png"))
        backgroung.frame = CGRect(x: 120.0, y: 150.0 , width: 680.0, height: 300.0)
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
       
        
        
        
        let tap = view.hitTest(GC.location(in: view), with: nil)
        
        
            if tap is Button{
                
                
                let btn = tap as? Button
                if btn?.getID() == "play" {
                    destroysetupinitial()
                    view.addSubview(restartbutton)
                    state1 = 0
                    state2 = 0
                    
                }else{
                    
                    setupinitial()
                    destroysetupinitial()
                }
                
                
            }
            
            let shoecircle = tap as? ShoeCircle
            
            
            if shoecircle?.getId() == 1 && state1 == 0{
                
                state1 = 1
                arrow.removeFromSuperview()
                text1.removeFromSuperview()
                view.addSubview(arrow2)
                view.addSubview(text2)
                
            } else if shoecircle?.getId() == 2 && state1 == 1 {
                
                drawLineFromPoint(start: CGPoint.init(x: 340, y: 205), toPoint: CGPoint.init(x: 340, y: 395), ofColor: UIColor.purple, inView: view, shapeLayer: line1)
                
                state2 = 2
                arrow2.removeFromSuperview()
                text2.removeFromSuperview()
                view.addSubview(text3)
                
            }
            else if shoecircle?.getId() == 4 && state2 == 2{
                
                drawLineFromPoint(start: CGPoint.init(x: 340, y: 395), toPoint: CGPoint.init(x: 395, y: 213), ofColor: UIColor.orange, inView: view, shapeLayer: line2)
                
                state2 = 4
                text3.removeFromSuperview()
                
            }else if shoecircle?.getId() == 6 && state1 == 3{
                drawLineFromPoint(start: CGPoint.init(x: 395, y: 385), toPoint: CGPoint.init(x: 452, y: 217), ofColor: UIColor.green, inView: view, shapeLayer: line3)
                state1 = 6
                
                
                
            }else if shoecircle?.getId() == 3 && state1 == 1{
                
                drawLineFromPoint(start: CGPoint.init(x: 340, y: 205), toPoint: CGPoint.init(x: 395, y: 385), ofColor: UIColor.blue, inView: view, shapeLayer: line4)
                state1 = 3
                text3.removeFromSuperview()
                
            }else if shoecircle?.getId() == 5 && state2 == 4{
                
                drawLineFromPoint(start: CGPoint.init(x: 395, y: 213), toPoint: CGPoint.init(x: 452, y: 382), ofColor: UIColor.yellow, inView: view, shapeLayer: line5)
                state2 = 5
            }
            else if shoecircle?.getId() == 8 && state2 == 5{
                
                drawLineFromPoint(start: CGPoint.init(x: 449, y: 382), toPoint: CGPoint.init(x: 497, y: 250), ofColor: UIColor.cyan, inView: view, shapeLayer: line6)
                state2 = 8
                lace2.image = UIImage (named: "lace22")
                view.addSubview(lace2)
                
                
            }
            else if shoecircle?.getId() == 7 && state1 == 6{
                
                drawLineFromPoint(start: CGPoint.init(x: 450, y: 217), toPoint: CGPoint.init(x: 492, y: 353), ofColor: UIColor.red, inView: view, shapeLayer: line7)
                state1 = 7
                lace1.image = UIImage (named: "lace12")
                view.addSubview(lace1)
            }
            
            state3 = state1 + state2
            
            if state3 == 15 {
                
                view.addSubview(nextstepbutton)
                partefinal( GC: GC )
                
            }
            
     
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    
    func drawLineFromPoint(start : CGPoint, toPoint end:CGPoint, ofColor lineColor: UIColor, inView view:UIView, shapeLayer: CAShapeLayer) {
        

            let path = UIBezierPath()
            path.move(to: start)
            path.addLine(to: end)
            shapeLayer.path = path.cgPath
            shapeLayer.strokeColor = lineColor.cgColor
            shapeLayer.lineWidth = 6.5
            shapeLayer.cornerRadius = 1
        
            view.layer.addSublayer(shapeLayer)
        
        
        }
    
    /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    
    private let widthShoeCircle = 40
    private let heightShoeCircle = 32

    public func setup (){
    
        
        
        shoeCircle1 = ShoeCircle(image: UIImage.init(named: "buraco_cadarco_final.png")!, id: 1)
        shoeCircle1.frame = CGRect(x: 320, y: 192, width: widthShoeCircle, height: heightShoeCircle)
        shoeCircle1.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(Control.tap(GC:))))
        
        
        shoeCircle2 = ShoeCircle(image: UIImage.init(named: "buraco_cadarco_final.png")!, id: 2)
        shoeCircle2.frame = CGRect(x: 320, y: 376, width: widthShoeCircle, height: heightShoeCircle)
        shoeCircle2.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(Control.tap(GC:))))
        
        shoeCircle3 = ShoeCircle(image: UIImage.init(named: "buraco_cadarco_final.png")!, id: 3)
        shoeCircle3.frame = CGRect(x: 375, y: 367, width: widthShoeCircle, height: heightShoeCircle)
        shoeCircle3.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(Control.tap(GC:))))
        
        shoeCircle4 = ShoeCircle(image: UIImage.init(named: "buraco_cadarco_final.png")!, id: 4)
        shoeCircle4.frame = CGRect(x: 375, y: 201, width: widthShoeCircle, height: heightShoeCircle)
        shoeCircle4.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(Control.tap(GC:))))
        
        shoeCircle5 = ShoeCircle(image: UIImage.init(named: "buraco_cadarco_final.png")!, id: 5)
        shoeCircle5.frame = CGRect(x: 430, y: 363, width: widthShoeCircle, height: heightShoeCircle)
        shoeCircle5.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(Control.tap(GC:))))
        
        shoeCircle6 = ShoeCircle(image: UIImage.init(named: "buraco_cadarco_final.png")!, id: 6)
        shoeCircle6.frame = CGRect(x: 430, y: 205, width: widthShoeCircle, height: heightShoeCircle)
        shoeCircle6.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(Control.tap(GC:))))
        
        shoeCircle7 = ShoeCircle(image: UIImage.init(named: "buraco_cadarco_final.png")!, id: 7)
        shoeCircle7.frame = CGRect(x: 485, y: 361, width: widthShoeCircle, height: heightShoeCircle)
        shoeCircle7.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(Control.tap(GC:))))
        
        shoeCircle8 = ShoeCircle(image: UIImage.init(named: "buraco_cadarco_final.png")!, id: 8)
        shoeCircle8.frame = CGRect(x: 485, y: 207, width: widthShoeCircle, height: heightShoeCircle)
        shoeCircle8.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(Control.tap(GC:))))
        
        arrow.setImage(imagearrow, for: UIControlState.normal)
        
        text1.setImage(imagetext1, for: UIControlState.normal)
        
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
    
        nextstepbutton.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(Control.partefinal(GC:))))
        
        let tap2 = view.hitTest(GC.location(in: view), with: nil)
        if tap2 is Button{
            
            let btn2 = tap2 as? Button
            
            if btn2?.getID() == "nextstepbutton" {
            
            lace1.removeFromSuperview()
            lace2.removeFromSuperview()
                
                if statefinal == 0{
            
                    lace3.image = UIImage(named: "lace32")
                    view.addSubview(lace3)
                    text4.setImage(imagetext4, for: UIControlState.normal)
                    view.addSubview(text4)
                    statefinal = 1
                    
                }else if statefinal == 1{
                    text4.removeFromSuperview()
                    lace3.removeFromSuperview()
                    lace4.image = UIImage(named: "lace42")
                    view.addSubview(lace4)
                    text5.setImage(imagetext5, for: UIControlState.normal)
                    view.addSubview(text5)
                    statefinal = 2
                
                }else if statefinal == 2{
                    text5.removeFromSuperview()
                    lace4.removeFromSuperview()
                    lace5.image = UIImage(named: "lace52")
                    view.addSubview(lace5)
                    text6.setImage(imagetext6, for: UIControlState.normal)
                    view.addSubview(text6)
                    statefinal = 3
                    
                }else if statefinal == 3{
                    text6.removeFromSuperview()
                    lace5.removeFromSuperview()
                    lace6.image = UIImage(named: "lace62")
                    view.addSubview(lace6)
                    text7.setImage(imagetext7, for: UIControlState.normal)
                    view.addSubview(text7)
                    statefinal = 4
                    
                }else if statefinal == 4{
                    text7.removeFromSuperview()
                    lace6.removeFromSuperview()
                    lace7.image = UIImage(named: "lace72")
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


