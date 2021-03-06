//
//  SDNetView.swift
//  SwiftDebug
//
//  Created by linzixin on 2021/12/20.
//

import Foundation
class SDNetView: SDPerformGridView {
    convenience init() {
        self.init(title: "ē½é", desc: "")
    }
    
    func updateFlow(download: UInt32, upload: UInt32) {
        descLabel.text = "ā \(judgeUnit(download))\nā \(judgeUnit(upload))"
    }
    
    private func judgeUnit(_ bytes: UInt32) -> String {
        let speed = Double(bytes)
        if speed < 1024 {
            return String(format: "%.2f B/s", speed)
        } else if speed < 1048576 {
            return String(format: "%.2f KB/s", speed / 1024)
        } else if speed < 1073741824 {
            return String(format: "%.2f MB/s", speed / 1048576)
        } else {
            return String(format: "%.2f GB/s", speed / 1073741824)
        }
    }
}
