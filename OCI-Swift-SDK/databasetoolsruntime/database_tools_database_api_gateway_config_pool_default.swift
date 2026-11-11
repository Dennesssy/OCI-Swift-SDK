import Foundation

// MARK: - DatabaseToolsDatabaseApiGatewayConfigPoolDefault

public struct DatabaseToolsDatabaseApiGatewayConfigPoolDefault: Codable, Sendable {

    public var key: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?
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
    public var databaseActionsStatus: DatabaseToolsDatabaseApiGatewayConfigPoolDatabaseActionsStatusEnum?
    public var restEnabledSqlStatus: DatabaseToolsDatabaseApiGatewayConfigPoolRestEnabledSqlStatusEnum?

    private enum CodingKeys: String, CodingKey {
        case key, timeCreated, timeUpdated, displayName, poolRouteValue, databaseToolsConnectionId, maxPoolSize, minPoolSize, initialPoolSize, jwtProfileJwkUrl, jwtProfileIssuer, jwtProfileAudience, jwtProfileRoleClaimName, advancedProperties, databaseActionsStatus, restEnabledSqlStatus
    }

    public init(
                key: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
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
                databaseActionsStatus: DatabaseToolsDatabaseApiGatewayConfigPoolDatabaseActionsStatusEnum? = nil,
                restEnabledSqlStatus: DatabaseToolsDatabaseApiGatewayConfigPoolRestEnabledSqlStatusEnum? = nil
    ) {
        self.key = key
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
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

extension DatabaseToolsDatabaseApiGatewayConfigPoolDefault: CustomStringConvertible {
    public var description: String { "DatabaseToolsDatabaseApiGatewayConfigPoolDefault()" }
}