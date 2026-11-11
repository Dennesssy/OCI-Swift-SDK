import Foundation

// MARK: - databasetoolsdatabaseapigatewayconfigpool

public struct databasetoolsdatabaseapigatewayconfigpool: Codable, Sendable {

    public var jsonData: Data?
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
    public var databaseActionsStatus: DatabaseToolsDatabaseApiGatewayConfigPoolDatabaseActionsStatusEnum?
    public var restEnabledSqlStatus: DatabaseToolsDatabaseApiGatewayConfigPoolRestEnabledSqlStatusEnum?
    public var advancedProperties: [String: String]?
    public var key: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var type: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, displayName, poolRouteValue, databaseToolsConnectionId, maxPoolSize, minPoolSize, initialPoolSize, jwtProfileJwkUrl, jwtProfileIssuer, jwtProfileAudience, jwtProfileRoleClaimName, databaseActionsStatus, restEnabledSqlStatus, advancedProperties, key, timeCreated, timeUpdated, type
    }

    public init(
                jsonData: Data? = nil,
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
                databaseActionsStatus: DatabaseToolsDatabaseApiGatewayConfigPoolDatabaseActionsStatusEnum? = nil,
                restEnabledSqlStatus: DatabaseToolsDatabaseApiGatewayConfigPoolRestEnabledSqlStatusEnum? = nil,
                advancedProperties: [String: String]? = nil,
                key: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                type: String? = nil
    ) {
        self.jsonData = jsonData
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
        self.databaseActionsStatus = databaseActionsStatus
        self.restEnabledSqlStatus = restEnabledSqlStatus
        self.advancedProperties = advancedProperties
        self.key = key
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.type = type
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension databasetoolsdatabaseapigatewayconfigpool: CustomStringConvertible {
    public var description: String { "databasetoolsdatabaseapigatewayconfigpool()" }
}