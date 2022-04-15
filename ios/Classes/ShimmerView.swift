import Flutter
import UIKit
import Shimmer

class ShimmerViewFactory: NSObject, FlutterPlatformViewFactory {
    private var messenger: FlutterBinaryMessenger

    init(messenger: FlutterBinaryMessenger) {
        self.messenger = messenger
        super.init()
    }

    func create(
        withFrame frame: CGRect,
        viewIdentifier viewId: Int64,
        arguments args: Any?
    ) -> FlutterPlatformView {
        return ShimmerView(
            frame: frame,
            viewIdentifier: viewId,
            arguments: args,
            binaryMessenger: messenger)
    }
}

class ShimmerView: NSObject, FlutterPlatformView {
    private var _view: UIView
  
    init(
        frame: CGRect,
        viewIdentifier viewId: Int64,
        arguments args: Any?,
        binaryMessenger messenger: FlutterBinaryMessenger?
    ) {
        _view = UIView()
        super.init()
        createNativeView(view: _view)
    }

    func view() -> UIView {
        return _view
    }

    func createNativeView(view _view: UIView){
        let imageView = UIImageView()
        imageView.backgroundColor = .gray
        imageView.frame = CGRect(x: 0, y: 0, width: 750, height: 1334)
        
        let shimmer = FBShimmeringView(frame: imageView.frame)
        shimmer.contentView = imageView
        shimmer.isShimmering = true
        
        _view.addSubview(shimmer)
    }
}
