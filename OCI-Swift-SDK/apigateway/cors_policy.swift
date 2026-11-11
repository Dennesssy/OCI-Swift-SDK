import Foundation

// MARK: - CorsPolicy

public struct CorsPolicy: Codable, Sendable {

    public var allowedOrigins: [String]
    public var allowedMethods: [String]?
    public var allowedHeaders: [String]?
    public var exposedHeaders: [String]?
    public var isAllowCredentialsEnabled: Bool?
    public var maxAgeInSeconds: Int?

    private enum CodingKeys: String, CodingKey {
        case allowedOrigins, allowedMethods, allowedHeaders, exposedHeaders, isAllowCredentialsEnabled, maxAgeInSeconds
    }

    public init(
                allowedOrigins: [String],
                allowedMethods: [String]? = nil,
                allowedHeaders: [String]? = nil,
                exposedHeaders: [String]? = nil,
                isAllowCredentialsEnabled: Bool? = nil,
                maxAgeInSeconds: Int? = nil
    ) {
        self.allowedOrigins = allowedOrigins
        self.allowedMethods = allowedMethods
        self.allowedHeaders = allowedHeaders
        self.exposedHeaders = exposedHeaders
        self.isAllowCredentialsEnabled = isAllowCredentialsEnabled
        self.maxAgeInSeconds = maxAgeInSeconds
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CorsPolicy: CustomStringConvertible {
    public var description: String { "CorsPolicy()" }
}