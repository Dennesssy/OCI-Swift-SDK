import Foundation

// MARK: - UpdateDatabaseToolsDatabaseApiGatewayConfigPoolDefaultDetails

public struct UpdateDatabaseToolsDatabaseApiGatewayConfigPoolDefaultDetails: Codable, Sendable {

    public var displayName: String?
    public var poolRouteValue: String?
    public var databaseToolsConnectionId: String?
    public var maxPoolSize: Int?
    public var minPoolSize: Int?
    public var initialPoolSize: Int?
    public var jwtProfileJwkUrl: String?
    public var jwtProfileIssuer: String?
    public var jwtProfileAudience: String?
    public var jwtProfileRoleClaimName: String?
    public var advancedProperties: [String: String]?
    public var databaseActionsStatus: UpdateDatabaseToolsDatabaseApiGatewayConfigPoolDetailsDatabaseActionsStatusEnum?
    public var restEnabledSqlStatus: UpdateDatabaseToolsDatabaseApiGatewayConfigPoolDetailsRestEnabledSqlStatusEnum?

    private enum CodingKeys: String, CodingKey {
        case displayName, poolRouteValue, databaseToolsConnectionId, maxPoolSize, minPoolSize, initialPoolSize, jwtProfileJwkUrl, jwtProfileIssuer, jwtProfileAudience, jwtProfileRoleClaimName, advancedProperties, databaseActionsStatus, restEnabledSqlStatus
    }

    public init(
                displayName: String? = nil,
                poolRouteValue: String? = nil,
                databaseToolsConnectionId: String? = nil,
                maxPoolSize: Int? = nil,
                minPoolSize: Int? = nil,
                initialPoolSize: Int? = nil,
                jwtProfileJwkUrl: String? = nil,
                jwtProfileIssuer: String? = nil,
                jwtProfileAudience: String? = nil,
                jwtProfileRoleClaimName: String? = nil,
                advancedProperties: [String: String]? = nil,
                databaseActionsStatus: UpdateDatabaseToolsDatabaseApiGatewayConfigPoolDetailsDatabaseActionsStatusEnum? = nil,
                restEnabledSqlStatus: UpdateDatabaseToolsDatabaseApiGatewayConfigPoolDetailsRestEnabledSqlStatusEnum? = nil
    ) {
        self.displayName = displayName
        self.poolRouteValue = poolRouteValue
        self.databaseToolsConnectionId = databaseToolsConnectionId
        self.maxPoolSize = maxPoolSize
        self.minPoolSize = minPoolSize
        self.initialPoolSize = initialPoolSize
        self.jwtProfileJwkUrl = jwtProfileJwkUrl
        self.jwtProfileIssuer = jwtProfileIssuer
        self.jwtProfileAudience = jwtProfileAudience
        self.jwtProfileRoleClaimName = jwtProfileRoleClaimName
        self.advancedProperties = advancedProperties
        self.databaseActionsStatus = databaseActionsStatus
        self.restEnabledSqlStatus = restEnabledSqlStatus
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateDatabaseToolsDatabaseApiGatewayConfigPoolDefaultDetails: CustomStringConvertible {
    public var description: String { "UpdateDatabaseToolsDatabaseApiGatewayConfigPoolDefaultDetails()" }
}