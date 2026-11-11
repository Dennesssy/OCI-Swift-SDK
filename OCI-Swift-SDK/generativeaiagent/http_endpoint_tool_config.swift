import Foundation
import OCICommon

// MARK: - HttpEndpointToolConfig

public struct HttpEndpointToolConfig: Codable, Sendable {

    public var apiSchema: JSONValue
    public var subnetId: String?
    public var httpEndpointAuthConfig: HttpEndpointAuthConfig?

    private enum CodingKeys: String, CodingKey {
        case apiSchema, subnetId, httpEndpointAuthConfig
    }

    public init(
                apiSchema: JSONValue,
                subnetId: String? = nil,
                httpEndpointAuthConfig: HttpEndpointAuthConfig? = nil
    ) {
        self.apiSchema = apiSchema
        self.subnetId = subnetId
        self.httpEndpointAuthConfig = httpEndpointAuthConfig
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension HttpEndpointToolConfig: CustomStringConvertible {
    public var description: String { "HttpEndpointToolConfig()" }
}