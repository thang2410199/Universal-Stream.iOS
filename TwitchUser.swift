//
//  TwitchUser.swift
//
//  Created by Ngo Quoc Thang on 7/1/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import ObjectMapper

public class TwitchUser: Mappable {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kTwitchUserCreatedAtKey: String = "created_at"
	internal let kTwitchUserDisplayNameKey: String = "display_name"
	internal let kTwitchUserTypeKey: String = "type"
	internal let kTwitchUserInternalIdentifierKey: String = "_id"
	internal let kTwitchUserLogoKey: String = "logo"
	internal let kTwitchUserUpdatedAtKey: String = "updated_at"
	internal let kTwitchUserLinksKey: String = "_links"
	internal let kTwitchUserBioKey: String = "bio"
	internal let kTwitchUserNameKey: String = "name"


    // MARK: Properties
	public var createdAt: String?
	public var displayName: String?
	public var type: String?
	public var internalIdentifier: Int?
	public var logo: String?
	public var updatedAt: String?
	public var links: TwitchLink?
	public var bio: String?
	public var name: String?



    // MARK: ObjectMapper Initalizers
    /**
    Map a JSON object to this class using ObjectMapper
    - parameter map: A mapping from ObjectMapper
    */
    required public init?(_ map: Map){

    }

    /**
    Map a JSON object to this class using ObjectMapper
    - parameter map: A mapping from ObjectMapper
    */
    public func mapping(map: Map) {
		createdAt <- map[kTwitchUserCreatedAtKey]
		displayName <- map[kTwitchUserDisplayNameKey]
		type <- map[kTwitchUserTypeKey]
		internalIdentifier <- map[kTwitchUserInternalIdentifierKey]
		logo <- map[kTwitchUserLogoKey]
		updatedAt <- map[kTwitchUserUpdatedAtKey]
		links <- map[kTwitchUserLinksKey]
		bio <- map[kTwitchUserBioKey]
		name <- map[kTwitchUserNameKey]

    }
}
