import Foundation
import UIKit


public class Control : UIViewController {
    var state1 = 0
    var state2 = 0
    
    let seta = UIButton(frame :CGRect(x: 7, y: 450, width: 120, height: 120))
    let imageseta = UIImage(named: "seta.png")
    
    let seta2 = UIButton(frame :CGRect(x: 267, y: 450, width: 120, height: 120))
    let imageseta2 = UIImage(named: "seta2.png")
    
    public init (){
        super.init(nibName: nil, bundle: nil)
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(Control.tap(GC:))))

        
        
        
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public override func viewDidLoad() {
       
        
        view = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 450.0, height: 600.0))
        view.backgroundColor = UIColor.white
        
        
        let background = UIImageView.init(image: UIImage.init(named: "Group.png"))
        background.frame = CGRect(x: 70, y: 0.0, width: 250.0, height: 650.0)
        view.addSubview(background)
        
        seta.setImage(imageseta, for: UIControlState.normal)
        view.addSubview(seta)
        
        seta2.setImage(imageseta2, for: UIControlState.normal)
        
        
        
        
        setup()
    }
    
    public override func viewDidAppear(_ animated: Bool) {
        print ("foi")
    }
    
    
    
    public func tap ( GC:UIGestureRecognizer){
        
        
    
        
        let tap = view.hitTest(GC.location(in: view), with: nil)
        
        
            let shoecircle = tap as? ShoeCircle
            if shoecircle?.getId() == 1 {
                state1 = 1
                print("1")
                seta.isHidden = true
                view.addSubview(seta2)
                
            } else if shoecircle?.getId() == 2 && state1 == 1 {
            print("2")
                _ = drawLineFromPoint(start: CGPoint.init(x: 116, y: 435), toPoint: CGPoint.init(x: 270, y: 436), ofColor: UIColor.purple, inView: view)
                    state2 = 2
                    seta2.isHidden = true
                
            }else if shoecircle?.getId() == 4 && state2 == 2{
                print("4")
                _ = drawLineFromPoint(start: CGPoint.init(x: 270, y: 436), toPoint: CGPoint.init(x: 120, y: 383), ofColor: UIColor.red, inView: view)
                    state2 = 4
            }else if shoecircle?.getId() == 6 && state1 == 3{
                _ = drawLineFromPoint(start: CGPoint.init(x: 265, y: 383), toPoint: CGPoint.init(x: 120, y: 333), ofColor: UIColor.green, inView: view)
                state1 = 6
                print("6")
                
                
            }else if shoecircle?.getId() == 3 && state1 == 1{
                print("3")
                _ = drawLineFromPoint(start: CGPoint.init(x: 116, y: 435), toPoint: CGPoint.init(x: 265, y: 383), ofColor: UIColor.blue, inView: view)
                state1 = 3
            }else if shoecircle?.getId() == 5 && state2 == 4{
                print("5")
            _ = drawLineFromPoint(start: CGPoint.init(x: 120, y: 385), toPoint: CGPoint.init(x: 265, y: 333), ofColor: UIColor.yellow, inView: view)
            state2 = 5
        }
            else if shoecircle?.getId() == 8 && state2 == 5{
                print("8")
                _ = drawLineFromPoint(start: CGPoint.init(x: 265, y: 335), toPoint: CGPoint.init(x: 121, y: 283), ofColor: UIColor.cyan, inView: view)
                state2 = 8
            }
            else if shoecircle?.getId() == 7 && state1 == 6{
                print("7")
                _ = drawLineFromPoint(start: CGPoint.init(x: 120, y: 333), toPoint: CGPoint.init(x: 265, y: 283), ofColor: UIColor.orange, inView: view)
                state1 = 7
            }
            
    
        
        }
    
    
    
    func drawLineFromPoint(start : CGPoint, toPoint end:CGPoint, ofColor lineColor: UIColor, inView view:UIView) {
        
            //design the path
            let path = UIBezierPath()
            path.move(to: start)
            path.addLine(to: end)
        
            //design path in layer
            let shapeLayer = CAShapeLayer()
            shapeLayer.path = path.cgPath
            shapeLayer.strokeColor = lineColor.cgColor
            shapeLayer.lineWidth = 5.5
            shapeLayer.cornerRadius = 1
        
            view.layer.addSublayer(shapeLayer)
        }
    
    private let widthShoeCircle = 35
    private let heightShoeCircle = 28

    public func setup (){
    
        
        
        let shoeCircle1 = ShoeCircle(image: UIImage.init(named: "buraco_cadarco_final.png")!, id: 1)
        shoeCircle1.frame = CGRect(x: 102, y: 420, width: widthShoeCircle, height: heightShoeCircle)
        
        let shoeCircle2 = ShoeCircle(image: UIImage.init(named: "buraco_cadarco_final.png")!, id: 2)
        shoeCircle2.frame = CGRect(x: 250, y: 422, width: widthShoeCircle, height: heightShoeCircle)
        
        let shoeCircle3 = ShoeCircle(image: UIImage.init(named: "buraco_cadarco_final.png")!, id: 3)
        shoeCircle3.frame = CGRect(x: 246, y: 370, width: widthShoeCircle, height: heightShoeCircle)
        
        let shoeCircle4 = ShoeCircle(image: UIImage.init(named: "buraco_cadarco_final.png")!, id: 4)
        shoeCircle4.frame = CGRect(x: 106, y: 370, width: widthShoeCircle, height: heightShoeCircle)
        
        let shoeCircle5 = ShoeCircle(image: UIImage.init(named: "buraco_cadarco_final.png")!, id: 5)
        shoeCircle5.frame = CGRect(x: 245, y: 320, width: widthShoeCircle, height: heightShoeCircle)
        
        let shoeCircle6 = ShoeCircle(image: UIImage.init(named: "buraco_cadarco_final.png")!, id: 6)
        shoeCircle6.frame = CGRect(x: 108, y: 320, width: widthShoeCircle, height: heightShoeCircle)
        
        let shoeCircle7 = ShoeCircle(image: UIImage.init(named: "buraco_cadarco_final.png")!, id: 7)
        shoeCircle7.frame = CGRect(x: 245, y: 270, width: widthShoeCircle, height: heightShoeCircle)
        
        let shoeCircle8 = ShoeCircle(image: UIImage.init(named: "buraco_cadarco_final.png")!, id: 8)
        shoeCircle8.frame = CGRect(x: 108, y: 270, width: widthShoeCircle, height: heightShoeCircle)
        
     
        view.addSubview(shoeCircle1)
        view.addSubview(shoeCircle2)
        view.addSubview(shoeCircle3)
        view.addSubview(shoeCircle4)
        view.addSubview(shoeCircle5)
        view.addSubview(shoeCircle6)
        view.addSubview(shoeCircle7)
        view.addSubview(shoeCircle8)
        
    }
    
}


