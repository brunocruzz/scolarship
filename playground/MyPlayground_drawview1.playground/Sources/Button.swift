import Foundation
import UIKit

public class Button: UIButton {
    private let id: String
    public var imageViewButton: UIImageView?
    
    
    init(CGRect: CGRect, image: UIImage, id: String ) {
        self.id = id
        
        
        super.init(frame: CGRect)
        
        self.imageViewButton = UIImageView.init(image: image)
        imageViewButton?.frame.size.width = self.frame.width
        imageViewButton?.frame.size.height = self.frame.height
        
        self.addSubview(self.imageViewButton!)
        
        
    }
    
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func getID() -> String {
        return id
    }
}

