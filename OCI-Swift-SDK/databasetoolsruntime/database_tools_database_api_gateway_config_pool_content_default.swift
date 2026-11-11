import Foundation
import OCICommon

// MARK: - DatabaseToolsDatabaseApiGatewayConfigPoolContentDefault

public struct DatabaseToolsDatabaseApiGatewayConfigPoolContentDefault: Codable, Sendable {

    public var key: String?
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
    public var apiSpecs: [JSONValue]?
    public var autoApiSpecs: [JSONValue]?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var databaseActionsStatus: DatabaseToolsDatabaseApiGatewayConfigPoolContentDatabaseActionsStatusEnum?
    public var restEnabledSqlStatus: DatabaseToolsDatabaseApiGatewayConfigPoolContentRestEnabledSqlStatusEnum?

    private enum CodingKeys: String, CodingKey {
        case key, displayName, poolRouteValue, databaseToolsConnectionId, maxPoolSize, minPoolSize, initialPoolSize, jwtProfileJwkUrl, jwtProfileIssuer, jwtProfileAudience, jwtProfileRoleClaimName, advancedProperties, apiSpecs, autoApiSpecs, timeCreated, timeUpdated, databaseActionsStatus, restEnabledSqlStatus
    }

    public init(
                key: String? = nil,
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
                apiSpecs: [JSONValue]? = nil,
                autoApiSpecs: [JSONValue]? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                databaseActionsStatus: DatabaseToolsDatabaseApiGatewayConfigPoolContentDatabaseActionsStatusEnum? = nil,
                restEnabledSqlStatus: DatabaseToolsDatabaseApiGatewayConfigPoolContentRestEnabledSqlStatusEnum? = nil
    ) {
        self.key = key
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
        self.apiSpecs = apiSpecs
        self.autoApiSpecs = autoApiSpecs
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.databaseActionsStatus = databaseActionsStatus
        self.restEnabledSqlStatus = restEnabledSqlStatus
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DatabaseToolsDatabaseApiGatewayConfigPoolContentDefault: CustomStringConvertible {
    public var description: String { "DatabaseToolsDatabaseApiGatewayConfigPoolContentDefault()" }
}