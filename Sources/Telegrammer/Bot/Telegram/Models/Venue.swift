// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.

/**
 This object represents a venue.

 SeeAlso Telegram Bot API Reference:
 [Venue](https://core.telegram.org/bots/api#venue)
 */
public final class Venue: Codable {

    /// Custom keys for coding/decoding `Venue` struct
    enum CodingKeys: String, CodingKey {
        case location = "location"
        case title = "title"
        case address = "address"
        case foursquareId = "foursquare_id"
        case foursquareType = "foursquare_type"
    }

    /// Venue location
    public var location: Location

    /// Name of the venue
    public var title: String

    /// Address of the venue
    public var address: String

    /// Optional. Foursquare identifier of the venue
    public var foursquareId: String?

    /// Optional. Foursquare type of the venue. (For example, “arts_entertainment/default”, “arts_entertainment/aquarium” or “food/icecream”.)
    public var foursquareType: String?


    public init (location: Location, title: String, address: String, foursquareId: String? = nil, foursquareType: String? = nil) {
        self.location = location
        self.title = title
        self.address = address
        self.foursquareId = foursquareId
        self.foursquareType = foursquareType
    }
}