//
//  SambaModel.swift
//
//
//  Created by Leandro Zanol on 3/3/16.
//
//

public class SambaMedia : CustomStringConvertible {
	
	public struct Output {
		let url: String, label: String, isDefault: Bool
	}
	
	public var title: String = ""
	public var url: String? {
		didSet {
			guard let urlNotNull = url else { return }
			
			if let _ = urlNotNull.rangeOfString("\\.m3u8$", options: .RegularExpressionSearch) {
				deliveryType = "hls"
			}
			else if let _ = urlNotNull.rangeOfString("\\.(mp4|mov)$", options: .RegularExpressionSearch) {
				deliveryType = "progressive"
			}
		}
	}
	public var deliveryType: String = "other"
	public var thumb: String?
	public var isLive = false;
	
	init() {}
	
	public convenience init(_ url:String) {
		self.init(url, title: nil, thumb: nil)
	}
	
	public init(_ url:String, title:String?, thumb:String?) {
		self.title = title ?? ""
		self.url = url
		self.thumb = thumb
	}
	
	public var description: String { return title; }
}

class SambaMediaConfig : SambaMedia {
	
	var id: String = ""
	var projectHash: String = ""
	var projectId: Int = 0
	var categoryId: Int = 0;
	//public sessionId: String = Helpers.getSessionId();
	var theme: Int = 0xFF72BE44
	var outputs: [SambaMedia.Output] = []
}
