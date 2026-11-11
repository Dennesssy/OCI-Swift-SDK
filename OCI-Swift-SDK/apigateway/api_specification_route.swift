import Foundation
import OCICommon

// MARK: - ApiSpecificationRoute

public struct ApiSpecificationRoute: Codable, Sendable {

    public var path: String?
    public var backend: JSONValue
    public var methods: [ApiSpecificationRouteMethodsEnum]?
    public var requestPolicies: ApiSpecificationRouteRequestPolicies?
    public var responsePolicies: ApiSpecificationRouteResponsePolicies?
    public var loggingPolicies: ApiSpecificationLoggingPolicies?

    private enum CodingKeys: String, CodingKey {
        case path, backend, methods, requestPolicies, responsePolicies, loggingPolicies
    }

    public init(
                path: String? = nil,
                backend: JSONValue,
                methods: [ApiSpecificationRouteMethodsEnum]? = nil,
                requestPolicies: ApiSpecificationRouteRequestPolicies? = nil,
                responsePolicies: ApiSpecificationRouteResponsePolicies? = nil,
                loggingPolicies: ApiSpecificationLoggingPolicies? = nil
    ) {
        self.path = path
        self.backend = backend
        self.methods = methods
        self.requestPolicies = requestPolicies
        self.responsePolicies = responsePolicies
        self.loggingPolicies = loggingPolicies
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ApiSpecificationRoute: CustomStringConvertible {
    public var description: String { "ApiSpecificationRoute()" }
}