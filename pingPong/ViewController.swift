import Cocoa
import MetalKit

class ViewController: NSViewController {
    
    var renderer: Renderer?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let metalView = view as? MTKView else {
            fatalError("metal view not set up in storyboard")
        }

        renderer = Renderer(view: metalView)
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

