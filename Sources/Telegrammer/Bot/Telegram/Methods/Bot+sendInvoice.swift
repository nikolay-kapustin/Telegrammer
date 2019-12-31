// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.

public extension Bot {

    /// Parameters container struct for `sendInvoice` method
    struct SendInvoiceParams: JSONEncodable {

        /// Unique identifier for the target private chat
        var chatId: Int64

        /// Product name, 1-32 characters
        var title: String

        /// Product description, 1-255 characters
        var description: String

        /// Bot-defined invoice payload, 1-128 bytes. This will not be displayed to the user, use for your internal processes.
        var payload: String

        /// Payments provider token, obtained via Botfather
        var providerToken: String

        /// Unique deep-linking parameter that can be used to generate this invoice when used as a start parameter
        var startParameter: String

        /// Three-letter ISO 4217 currency code, see more on currencies
        var currency: String

        /// Price breakdown, a list of components (e.g. product price, tax, discount, delivery cost, delivery tax, bonus, etc.)
        var prices: [LabeledPrice]

        /// JSON-encoded data about the invoice, which will be shared with the payment provider. A detailed description of required fields should be provided by the payment provider.
        var providerData: String?

        /// URL of the product photo for the invoice. Can be a photo of the goods or a marketing image for a service. People like it better when they see what they are paying for.
        var photoUrl: String?

        /// Photo size
        var photoSize: Int?

        /// Photo width
        var photoWidth: Int?

        /// Photo height
        var photoHeight: Int?

        /// Pass True, if you require the user's full name to complete the order
        var needName: Bool?

        /// Pass True, if you require the user's phone number to complete the order
        var needPhoneNumber: Bool?

        /// Pass True, if you require the user's email address to complete the order
        var needEmail: Bool?

        /// Pass True, if you require the user's shipping address to complete the order
        var needShippingAddress: Bool?

        /// Pass True, if user's phone number should be sent to provider
        var sendPhoneNumberToProvider: Bool?

        /// Pass True, if user's email address should be sent to provider
        var sendEmailToProvider: Bool?

        /// Pass True, if the final price depends on the shipping method
        var isFlexible: Bool?

        /// Sends the message silently. Users will receive a notification with no sound.
        var disableNotification: Bool?

        /// If the message is a reply, ID of the original message
        var replyToMessageId: Int?

        /// A JSON-serialized object for an inline keyboard. If empty, one 'Pay total price' button will be shown. If not empty, the first button must be a Pay button.
        var replyMarkup: InlineKeyboardMarkup?

        /// Custom keys for coding/decoding `SendInvoiceParams` struct
        enum CodingKeys: String, CodingKey {
            case chatId = "chat_id"
            case title = "title"
            case description = "description"
            case payload = "payload"
            case providerToken = "provider_token"
            case startParameter = "start_parameter"
            case currency = "currency"
            case prices = "prices"
            case providerData = "provider_data"
            case photoUrl = "photo_url"
            case photoSize = "photo_size"
            case photoWidth = "photo_width"
            case photoHeight = "photo_height"
            case needName = "need_name"
            case needPhoneNumber = "need_phone_number"
            case needEmail = "need_email"
            case needShippingAddress = "need_shipping_address"
            case sendPhoneNumberToProvider = "send_phone_number_to_provider"
            case sendEmailToProvider = "send_email_to_provider"
            case isFlexible = "is_flexible"
            case disableNotification = "disable_notification"
            case replyToMessageId = "reply_to_message_id"
            case replyMarkup = "reply_markup"
        }

        public init(chatId: Int64, title: String, description: String, payload: String, providerToken: String, startParameter: String, currency: String, prices: [LabeledPrice], providerData: String? = nil, photoUrl: String? = nil, photoSize: Int? = nil, photoWidth: Int? = nil, photoHeight: Int? = nil, needName: Bool? = nil, needPhoneNumber: Bool? = nil, needEmail: Bool? = nil, needShippingAddress: Bool? = nil, sendPhoneNumberToProvider: Bool? = nil, sendEmailToProvider: Bool? = nil, isFlexible: Bool? = nil, disableNotification: Bool? = nil, replyToMessageId: Int? = nil, replyMarkup: InlineKeyboardMarkup? = nil) {
            self.chatId = chatId
            self.title = title
            self.description = description
            self.payload = payload
            self.providerToken = providerToken
            self.startParameter = startParameter
            self.currency = currency
            self.prices = prices
            self.providerData = providerData
            self.photoUrl = photoUrl
            self.photoSize = photoSize
            self.photoWidth = photoWidth
            self.photoHeight = photoHeight
            self.needName = needName
            self.needPhoneNumber = needPhoneNumber
            self.needEmail = needEmail
            self.needShippingAddress = needShippingAddress
            self.sendPhoneNumberToProvider = sendPhoneNumberToProvider
            self.sendEmailToProvider = sendEmailToProvider
            self.isFlexible = isFlexible
            self.disableNotification = disableNotification
            self.replyToMessageId = replyToMessageId
            self.replyMarkup = replyMarkup
        }
    }

    /**
     Use this method to send invoices. On success, the sent Message is returned.

     SeeAlso Telegram Bot API Reference:
     [SendInvoiceParams](https://core.telegram.org/bots/api#sendinvoice)
     
     - Parameters:
         - params: Parameters container, see `SendInvoiceParams` struct
     - Throws: Throws on errors
     - Returns: Future of `Message` type
     */
    @discardableResult
    func sendInvoice(params: SendInvoiceParams) throws -> Future<Message> {
        let body = try httpBody(for: params)
        let headers = httpHeaders(for: params)
        return try client
            .request(endpoint: "sendInvoice", body: body, headers: headers)
            .flatMapThrowing { (container) -> Message in
                return try self.processContainer(container)
        }
    }
}
