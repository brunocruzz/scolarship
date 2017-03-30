import Foundation
import UIKit



class ShoeCircle: UIImageView {
    private let id : Int
    
    init(image: UIImage, id: Int) {
        
        self.id = id
        super.init(image: image)
        self.isUserInteractionEnabled = true
        

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func getId() -> Int {
        
        return self.id
    }




}
