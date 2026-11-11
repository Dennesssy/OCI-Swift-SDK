import Foundation
import OCICommon

// MARK: - CustomAuthenticationPolicy

public struct CustomAuthenticationPolicy: Codable, Sendable {

    public var functionId: String?
    public var isAnonymousAccessAllowed: Bool?
    public var tokenHeader: String?
    public var tokenQueryParam: String?
    public var parameters: [String: String]?
    public var cacheKey: [String]?
    public var validationFailurePolicy: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case functionId, isAnonymousAccessAllowed, tokenHeader, tokenQueryParam, parameters, cacheKey, validationFailurePolicy
    }

    public init(
                functionId: String? = nil,
                isAnonymousAccessAllowed: Bool? = nil,
                tokenHeader: String? = nil,
                tokenQueryParam: String? = nil,
                parameters: [String: String]? = nil,
                cacheKey: [String]? = nil,
                validationFailurePolicy: JSONValue? = nil
    ) {
        self.functionId = functionId
        self.isAnonymousAccessAllowed = isAnonymousAccessAllowed
        self.tokenHeader = tokenHeader
        self.tokenQueryParam = tokenQueryParam
        self.parameters = parameters
        self.cacheKey = cacheKey
        self.validationFailurePolicy = validationFailurePolicy
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CustomAuthenticationPolicy: CustomStringConvertible {
    public var description: String { "CustomAuthenticationPolicy()" }
}