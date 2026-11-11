import Foundation
import OCICommon

// MARK: - InvokeRawJsonCommandDetails

public struct InvokeRawJsonCommandDetails: Codable, Sendable {

    public var requestEndpoint: String?
    public var requestDuration: String?
    public var responseDuration: String?
    public var responseEndpoint: String?
    public var requestDataContentType: String?
    public var requestData: [String: JSONValue]?

    private enum CodingKeys: String, CodingKey {
        case requestEndpoint, requestDuration, responseDuration, responseEndpoint, requestDataContentType, requestData
    }

    public init(
                requestEndpoint: String? = nil,
                requestDuration: String? = nil,
                responseDuration: String? = nil,
                responseEndpoint: String? = nil,
                requestDataContentType: String? = nil,
                requestData: [String: JSONValue]? = nil
    ) {
        self.requestEndpoint = requestEndpoint
        self.requestDuration = requestDuration
        self.responseDuration = responseDuration
        self.responseEndpoint = responseEndpoint
        self.requestDataContentType = requestDataContentType
        self.requestData = requestData
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension InvokeRawJsonCommandDetails: CustomStringConvertible {
    public var description: String { "InvokeRawJsonCommandDetails()" }
}