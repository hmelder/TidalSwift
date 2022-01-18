//
//  Config.swift
//  TidalSwiftLib
//
//  Created by Melvin Gundlach on 01.08.20.
//  Copyright © 2020 Melvin Gundlach. All rights reserved.
//

import Foundation

public class Config {
	var accessToken: String
	var refreshToken: String?
	var apiToken: String
	var clientId: String // Needs to be from TV for device auth to work
	var clientSecret: String // Needs to be from TV for device auth to work
	var offlineAudioQuality: AudioQuality
	var apiLocation: String
	var authLocation: String
	var imageLocation: String
	var imageSize: Int
	public var urlType: AudioUrlType
	
	public init(
		accessToken: String,
		refreshToken: String?,
		apiToken: String? = nil,
		clientId: String = "4ywnjRfroi84hz7i", // Updated Keys
		clientSecret: String = "7cNdrLt3NIQg0CHEpMDjcbV38XlwVdstczHqf59QiI0=",
		offlineAudioQuality: AudioQuality,
		urlType: AudioUrlType,
		apiLocation: String = "https://api.tidal.com/v1",
		authLocation: String = "https://auth.tidal.com/v1/oauth2",
		imageLocation: String = "https://resources.tidal.com/images",
		imageSize: Int = 1280
	) {
		self.accessToken = accessToken
		self.refreshToken = refreshToken
		
		if let token = apiToken {
			self.apiToken = token
		} else {
			self.apiToken = "_DSTon1kC8pABnTw" // Direct ALAC, 1080p Videos
		}
		
		self.clientId = clientId
		self.clientSecret = clientSecret
		
		self.offlineAudioQuality = offlineAudioQuality
		self.urlType = urlType
		
		self.apiLocation = apiLocation.replacingOccurrences(of: " ", with: "")
		if apiLocation.last == "/" {
			self.apiLocation = String(apiLocation.dropLast())
		}
		
		self.authLocation = authLocation.replacingOccurrences(of: " ", with: "")
		if authLocation.last == "/" {
			self.authLocation = String(apiLocation.dropLast())
		}
		
		self.imageLocation = imageLocation.replacingOccurrences(of: " ", with: "")
		if imageLocation.last == "/" {
			self.imageLocation = String(imageLocation.dropLast())
		}
		
		self.imageSize = imageSize
	}
}
