// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.


import HTTP

public extension Bot {

    /// Parameters container struct for `setPassportDataErrors` method
    public struct SetPassportDataErrorsParams: JSONEncodable {

        /// User identifier
        var userId: Int64

        /// A JSON-serialized array describing the errors
        var errors: [PassportElementError]

        /// Custom keys for coding/decoding `SetPassportDataErrorsParams` struct
        enum CodingKeys: String, CodingKey {
            case userId = "user_id"
            case errors = "errors"
        }

        public init(userId: Int64, errors: [PassportElementError]) {
            self.userId = userId
            self.errors = errors
        }
    }

    /**
     Informs a user that some of the Telegram Passport elements they provided contains errors. The user will not be able to re-submit their Passport to you until the errors are fixed (the contents of the field for which you returned the error must change). Returns True on success.
     Use this if the data submitted by the user doesn't satisfy the standards your service requires for any reason. For example, if a birthday date seems invalid, a submitted document is blurry, a scan shows evidence of tampering, etc. Supply some details in the error message to make sure the user knows how to correct the issues.

     SeeAlso Telegram Bot API Reference:
     [SetPassportDataErrorsParams](https://core.telegram.org/bots/api#setpassportdataerrors)
     
     - Parameters:
         - params: Parameters container, see `SetPassportDataErrorsParams` struct
     - Throws: Throws on errors
     - Returns: Future of `Bool` type
     */
    @discardableResult
    public func setPassportDataErrors(params: SetPassportDataErrorsParams) throws -> Future<Bool> {
        let body = try httpBody(for: params)
        let headers = httpHeaders(for: params)
        let response: Future<TelegramContainer<Bool>>
        response = try client.respond(endpoint: "setPassportDataErrors", body: body, headers: headers)
        return response.flatMap(to: Bool.self) { try self.wrap($0) }
    }
}