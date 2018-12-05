//
//  AppSwitcherView.swift
//
//  Version 0.1.0
//
//  Created by Oleksii Mykhailenko on 12/4/18.
//  Copyright © 2018 Oleksii Mykhailenko. All rights reserved.
//

import Foundation
import UIKit

public class AppSwitcherView {
    
    private enum AppSwitcherType {
        case none
        case view
        case controller
        case blur
    }
    
    private static let shared = AppSwitcherView()
    public private(set) var isEnabled = false
    private var appSwitcherWindow = UIWindow()
    private var appSwitcherViewController = UIViewController()
    private var ASVType: AppSwitcherType = .none
    private var ASVView: UIView? = nil
    private var ASVViewController: UIViewController? = nil
    private var blurStyle: UIBlurEffect.Style = .regular
    private var blurAlpha: CGFloat = 0.9
    
    //MARK: - Lifecycle
    
    private init() {
        print("init: \(self)")
    }
    
    deinit {
        print("deinit: \(self)")
        removeNotifications()
    }
    
    //MARK: - Notification
    
    /// Add Notification observers
    private func addNotifications() {
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(applicationWillResignActive),
                                               name: NSNotification.Name.NSExtensionHostWillResignActive,
                                               object: nil)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(applicationDidBecomeActive),
                                               name: NSNotification.Name.NSExtensionHostDidBecomeActive,
                                               object: nil)
    }
    
    /// Remove Notification observers
    private func removeNotifications() {
        NotificationCenter.default.removeObserver(self)
    }
    
    @objc private func applicationWillResignActive() {
        showWindow()
    }
    
    @objc private func applicationDidBecomeActive() {
        hideWindow()
    }
    
    //MARK: - Private func
    
    private func showWindow() {
        appSwitcherWindow.makeKeyAndVisible()
    }
    
    private func hideWindow() {
        appSwitcherWindow.isHidden = true
    }
    
    private func setupWindow() {
        switch ASVType {
        case .blur:
            let vc = UIViewController()
            vc.view.backgroundColor = .clear
            let blurEffect = UIBlurEffect(style: blurStyle)
            let blurEffectView = UIVisualEffectView(effect: blurEffect)
            
            blurEffectView.alpha = blurAlpha
            blurEffectView.frame = UIScreen.main.bounds
            vc.view.addSubview(blurEffectView)
            appSwitcherViewController = vc
            break
        case .view:
            if let view = ASVView {
                let vc = UIViewController()
                vc.view = view
                appSwitcherViewController = vc
                break
            } else {
                fallthrough
            }
        case .controller:
            if let controller = ASVViewController {
                appSwitcherViewController = controller
                break
            } else {
                fallthrough
            }
        default:
            let storyboard = UIStoryboard(name: "LaunchScreen", bundle: nil)
            let launchScreen = storyboard.instantiateViewController(withIdentifier: "LaunchScreen")
            appSwitcherViewController = launchScreen
        }
        appSwitcherWindow = UIWindow(frame: UIScreen.main.bounds)
        appSwitcherWindow.rootViewController = appSwitcherViewController
        appSwitcherWindow.windowLevel = UIWindow.Level.alert + 1
    }

    private func begin() {
        if isEnabled {
            return
        } else {
            addNotifications()
            isEnabled = true
        }
    }
    
    public func end() {
        if isEnabled {
            removeNotifications()
            isEnabled = false
        } else {
            return
        }
    }
    
    //MARK: - Public func
    
    public static func show() {
        shared.setupWindow()
        shared.begin()
    }
    
    public static func show(view: UIView) {
        shared.ASVView = view
        shared.ASVViewController = nil
        shared.ASVType = .view
        show()
    }
    
    public static func show(viewController: UIViewController) {
        shared.ASVView = nil
        shared.ASVViewController = viewController
        shared.ASVType = .controller
        show()
    }
    
    public static func showBlur(style: UIBlurEffect.Style = .light, alpha: CGFloat = 0.8) {
        shared.ASVView = nil
        shared.ASVViewController = nil
        shared.ASVType = .blur
        shared.blurStyle = style
        shared.blurAlpha = alpha
        show()
    }
}

