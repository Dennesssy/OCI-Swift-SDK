import Foundation

// MARK: - invokerawcommanddetails

public struct invokerawcommanddetails: Codable, Sendable {

    public var jsonData: Data?
    public var requestDuration: String?
    public var responseDuration: String?
    public var responseEndpoint: String?
    public var requestEndpoint: String?
    public var requestDataFormat: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, requestDuration, responseDuration, responseEndpoint, requestEndpoint, requestDataFormat
    }

    public init(
                jsonData: Data? = nil,
                requestDuration: String? = nil,
                responseDuration: String? = nil,
                responseEndpoint: String? = nil,
                requestEndpoint: String? = nil,
                requestDataFormat: String? = nil
    ) {
        self.jsonData = jsonData
        self.requestDuration = requestDuration
        self.responseDuration = responseDuration
        self.responseEndpoint = responseEndpoint
        self.requestEndpoint = requestEndpoint
        self.requestDataFormat = requestDataFormat
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension invokerawcommanddetails: CustomStringConvertible {
    public var description: String { "invokerawcommanddetails()" }
}