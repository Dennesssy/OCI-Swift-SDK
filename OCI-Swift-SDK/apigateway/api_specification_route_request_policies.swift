import Foundation
import OCICommon

// MARK: - ApiSpecificationRouteRequestPolicies

public struct ApiSpecificationRouteRequestPolicies: Codable, Sendable {

    public var authorization: JSONValue?
    public var cors: CorsPolicy?
    public var queryParameterValidations: QueryParameterValidationRequestPolicy?
    public var headerValidations: HeaderValidationRequestPolicy?
    public var bodyValidation: BodyValidationRequestPolicy?
    public var headerTransformations: HeaderTransformationPolicy?
    public var queryParameterTransformations: QueryParameterTransformationPolicy?
    public var responseCacheLookup: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case authorization, cors, queryParameterValidations, headerValidations, bodyValidation, headerTransformations, queryParameterTransformations, responseCacheLookup
    }

    public init(
                authorization: JSONValue? = nil,
                cors: CorsPolicy? = nil,
                queryParameterValidations: QueryParameterValidationRequestPolicy? = nil,
                headerValidations: HeaderValidationRequestPolicy? = nil,
                bodyValidation: BodyValidationRequestPolicy? = nil,
                headerTransformations: HeaderTransformationPolicy? = nil,
                queryParameterTransformations: QueryParameterTransformationPolicy? = nil,
                responseCacheLookup: JSONValue? = nil
    ) {
        self.authorization = authorization
        self.cors = cors
        self.queryParameterValidations = queryParameterValidations
        self.headerValidations = headerValidations
        self.bodyValidation = bodyValidation
        self.headerTransformations = headerTransformations
        self.queryParameterTransformations = queryParameterTransformations
        self.responseCacheLookup = responseCacheLookup
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ApiSpecificationRouteRequestPolicies: CustomStringConvertible {
    public var description: String { "ApiSpecificationRouteRequestPolicies()" }
}