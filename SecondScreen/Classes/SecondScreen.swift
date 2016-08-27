public protocol SecondScreenDelegate {
    func externalVideoConnected(externalWindow: UIWindow)
    func externalVideoDisconnected()
}

public class SecondScreen {
    
    public var delegate: SecondScreenDelegate?
    
    private var externalScreen: UIScreen?
    private var externalWindow: UIWindow?
    
    public init() {
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(SecondScreen.screenChanged(_:)), name: UIScreenDidConnectNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(SecondScreen.screenChanged(_:)), name: UIScreenDidDisconnectNotification, object: nil)
    }
    
    deinit {
        NSNotificationCenter.defaultCenter().removeObserver(self, name: UIScreenDidConnectNotification, object: nil)
        NSNotificationCenter.defaultCenter().removeObserver(self, name: UIScreenDidDisconnectNotification, object: nil)
    }
    
    @objc private func screenChanged(notification: NSNotification) {
        var screens = UIScreen.screens()
        
        if screens.count == 1 {
            externalScreen = nil
            externalWindow = nil
            delegate?.externalVideoDisconnected()
        } else {
            // retrieve external screen
            externalScreen = screens[1]
            
            // set max resolution available
            externalScreen?.currentMode = externalScreen?.availableModes.last
            
            // set overscan
            externalScreen?.overscanCompensation = UIScreenOverscanCompensation.InsetApplicationFrame
            
            // set window
            externalWindow = UIWindow.init(frame: externalScreen!.bounds)
            
            // delegate
            delegate?.externalVideoConnected(externalWindow!)
        }
    }
}
