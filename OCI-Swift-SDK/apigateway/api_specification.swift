import Foundation

// MARK: - ApiSpecification

public struct ApiSpecification: Codable, Sendable {

    public var requestPolicies: ApiSpecificationRequestPolicies?
    public var loggingPolicies: ApiSpecificationLoggingPolicies?
    public var routes: [ApiSpecificationRoute]?

    private enum CodingKeys: String, CodingKey {
        case requestPolicies, loggingPolicies, routes
    }

    public init(
                requestPolicies: ApiSpecificationRequestPolicies? = nil,
                loggingPolicies: ApiSpecificationLoggingPolicies? = nil,
                routes: [ApiSpecificationRoute]? = nil
    ) {
        self.requestPolicies = requestPolicies
        self.loggingPolicies = loggingPolicies
        self.routes = routes
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ApiSpecification: CustomStringConvertible {
    public var description: String { "ApiSpecification()" }
}