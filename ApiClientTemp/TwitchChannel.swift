//
//  TwitchChannel.swift
//
//  Created by Ngo Quoc Thang on May/20/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import ObjectMapper

public class TwitchChannel: Mappable {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kTwitchChannelCreatedAtKey: String = "created_at"
	internal let kTwitchChannelDisplayNameKey: String = "display_name"
	internal let kTwitchChannelLanguageKey: String = "language"
	internal let kTwitchChannelUrlKey: String = "url"
	internal let kTwitchChannelViewsKey: String = "views"
	internal let kTwitchChannelGameKey: String = "game"
	internal let kTwitchChannelPartnerKey: String = "partner"
	internal let kTwitchChannelProfileBannerKey: String = "profile_banner"
	internal let kTwitchChannelBannerKey: String = "banner"
	internal let kTwitchChannelLinksKey: String = "_links"
	internal let kTwitchChannelBackgroundKey: String = "background"
	internal let kTwitchChannelFollowersKey: String = "followers"
	internal let kTwitchChannelNameKey: String = "name"
	internal let kTwitchChannelProfileBannerBackgroundColorKey: String = "profile_banner_background_color"
	internal let kTwitchChannelVideoBannerKey: String = "video_banner"
	internal let kTwitchChannelDelayKey: String = "delay"
	internal let kTwitchChannelInternalIdentifierKey: String = "_id"
	internal let kTwitchChannelUpdatedAtKey: String = "updated_at"
	internal let kTwitchChannelLogoKey: String = "logo"
	internal let kTwitchChannelBroadcasterLanguageKey: String = "broadcaster_language"
	internal let kTwitchChannelMatureKey: String = "mature"
	internal let kTwitchChannelStatusKey: String = "status"


    // MARK: Properties
	public var createdAt: String?
	public var displayName: String?
	public var language: String?
	public var url: String?
	public var views: Int?
	public var game: String?
	public var partner: Bool = false
	public var profileBanner: String?
	public var banner: String?
	public var links: TwitchLink?
	public var background: String?
	public var followers: Int?
	public var name: String?
	public var profileBannerBackgroundColor: String?
	public var videoBanner: String?
	public var delay: String?
	public var internalIdentifier: Int?
	public var updatedAt: String?
	public var logo: String?
	public var broadcasterLanguage: String?
	public var mature: Bool = false
	public var status: String?



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
		createdAt <- map[kTwitchChannelCreatedAtKey]
		displayName <- map[kTwitchChannelDisplayNameKey]
		language <- map[kTwitchChannelLanguageKey]
		url <- map[kTwitchChannelUrlKey]
		views <- map[kTwitchChannelViewsKey]
		game <- map[kTwitchChannelGameKey]
		partner <- map[kTwitchChannelPartnerKey]
		profileBanner <- map[kTwitchChannelProfileBannerKey]
		banner <- map[kTwitchChannelBannerKey]
		links <- map[kTwitchChannelLinksKey]
		background <- map[kTwitchChannelBackgroundKey]
		followers <- map[kTwitchChannelFollowersKey]
		name <- map[kTwitchChannelNameKey]
		profileBannerBackgroundColor <- map[kTwitchChannelProfileBannerBackgroundColorKey]
		videoBanner <- map[kTwitchChannelVideoBannerKey]
		delay <- map[kTwitchChannelDelayKey]
		internalIdentifier <- map[kTwitchChannelInternalIdentifierKey]
		updatedAt <- map[kTwitchChannelUpdatedAtKey]
		logo <- map[kTwitchChannelLogoKey]
		broadcasterLanguage <- map[kTwitchChannelBroadcasterLanguageKey]
		mature <- map[kTwitchChannelMatureKey]
		status <- map[kTwitchChannelStatusKey]

    }

    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if createdAt != nil {
			dictionary.updateValue(createdAt!, forKey: kTwitchChannelCreatedAtKey)
		}
		if displayName != nil {
			dictionary.updateValue(displayName!, forKey: kTwitchChannelDisplayNameKey)
		}
		if language != nil {
			dictionary.updateValue(language!, forKey: kTwitchChannelLanguageKey)
		}
		if url != nil {
			dictionary.updateValue(url!, forKey: kTwitchChannelUrlKey)
		}
		if views != nil {
			dictionary.updateValue(views!, forKey: kTwitchChannelViewsKey)
		}
		if game != nil {
			dictionary.updateValue(game!, forKey: kTwitchChannelGameKey)
		}
		dictionary.updateValue(partner, forKey: kTwitchChannelPartnerKey)
		if profileBanner != nil {
			dictionary.updateValue(profileBanner!, forKey: kTwitchChannelProfileBannerKey)
		}
		if banner != nil {
			dictionary.updateValue(banner!, forKey: kTwitchChannelBannerKey)
		}
		if links != nil {
			dictionary.updateValue(links!.dictionaryRepresentation(), forKey: kTwitchChannelLinksKey)
		}
		if background != nil {
			dictionary.updateValue(background!, forKey: kTwitchChannelBackgroundKey)
		}
		if followers != nil {
			dictionary.updateValue(followers!, forKey: kTwitchChannelFollowersKey)
		}
		if name != nil {
			dictionary.updateValue(name!, forKey: kTwitchChannelNameKey)
		}
		if profileBannerBackgroundColor != nil {
			dictionary.updateValue(profileBannerBackgroundColor!, forKey: kTwitchChannelProfileBannerBackgroundColorKey)
		}
		if videoBanner != nil {
			dictionary.updateValue(videoBanner!, forKey: kTwitchChannelVideoBannerKey)
		}
		if delay != nil {
			dictionary.updateValue(delay!, forKey: kTwitchChannelDelayKey)
		}
		if internalIdentifier != nil {
			dictionary.updateValue(internalIdentifier!, forKey: kTwitchChannelInternalIdentifierKey)
		}
		if updatedAt != nil {
			dictionary.updateValue(updatedAt!, forKey: kTwitchChannelUpdatedAtKey)
		}
		if logo != nil {
			dictionary.updateValue(logo!, forKey: kTwitchChannelLogoKey)
		}
		if broadcasterLanguage != nil {
			dictionary.updateValue(broadcasterLanguage!, forKey: kTwitchChannelBroadcasterLanguageKey)
		}
		dictionary.updateValue(mature, forKey: kTwitchChannelMatureKey)
		if status != nil {
			dictionary.updateValue(status!, forKey: kTwitchChannelStatusKey)
		}

        return dictionary
    }

}
