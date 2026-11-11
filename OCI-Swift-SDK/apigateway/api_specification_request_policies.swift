import Foundation
import OCICommon

// MARK: - ApiSpecificationRequestPolicies

public struct ApiSpecificationRequestPolicies: Codable, Sendable {

    public var authentication: JSONValue?
    public var rateLimiting: RateLimitingPolicy?
    public var cors: CorsPolicy?
    public var mutualTls: MutualTlsDetails?
    public var usagePlans: UsagePlansPolicy?
    public var dynamicAuthentication: DynamicAuthenticationPolicy?

    private enum CodingKeys: String, CodingKey {
        case authentication, rateLimiting, cors, mutualTls, usagePlans, dynamicAuthentication
    }

    public init(
                authentication: JSONValue? = nil,
                rateLimiting: RateLimitingPolicy? = nil,
                cors: CorsPolicy? = nil,
                mutualTls: MutualTlsDetails? = nil,
                usagePlans: UsagePlansPolicy? = nil,
                dynamicAuthentication: DynamicAuthenticationPolicy? = nil
    ) {
        self.authentication = authentication
        self.rateLimiting = rateLimiting
        self.cors = cors
        self.mutualTls = mutualTls
        self.usagePlans = usagePlans
        self.dynamicAuthentication = dynamicAuthentication
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ApiSpecificationRequestPolicies: CustomStringConvertible {
    public var description: String { "ApiSpecificationRequestPolicies()" }
}