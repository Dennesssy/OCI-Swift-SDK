import Foundation
import OCICommon

// MARK: - ApiSpecificationRouteResponsePolicies

public struct ApiSpecificationRouteResponsePolicies: Codable, Sendable {

    public var headerTransformations: HeaderTransformationPolicy?
    public var responseCacheStore: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case headerTransformations, responseCacheStore
    }

    public init(
                headerTransformations: HeaderTransformationPolicy? = nil,
                responseCacheStore: JSONValue? = nil
    ) {
        self.headerTransformations = headerTransformations
        self.responseCacheStore = responseCacheStore
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ApiSpecificationRouteResponsePolicies: CustomStringConvertible {
    public var description: String { "ApiSpecificationRouteResponsePolicies()" }
}