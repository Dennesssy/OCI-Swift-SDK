import Foundation

// MARK: - updatedatabasetoolsdatabaseapigatewayconfigpooldetails

public struct updatedatabasetoolsdatabaseapigatewayconfigpooldetails: Codable, Sendable {

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
    public var databaseActionsStatus: UpdateDatabaseToolsDatabaseApiGatewayConfigPoolDetailsDatabaseActionsStatusEnum?
    public var restEnabledSqlStatus: UpdateDatabaseToolsDatabaseApiGatewayConfigPoolDetailsRestEnabledSqlStatusEnum?
    public var advancedProperties: [String: String]?
    public var type: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, displayName, poolRouteValue, databaseToolsConnectionId, maxPoolSize, minPoolSize, initialPoolSize, jwtProfileJwkUrl, jwtProfileIssuer, jwtProfileAudience, jwtProfileRoleClaimName, databaseActionsStatus, restEnabledSqlStatus, advancedProperties, type
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
                databaseActionsStatus: UpdateDatabaseToolsDatabaseApiGatewayConfigPoolDetailsDatabaseActionsStatusEnum? = nil,
                restEnabledSqlStatus: UpdateDatabaseToolsDatabaseApiGatewayConfigPoolDetailsRestEnabledSqlStatusEnum? = nil,
                advancedProperties: [String: String]? = nil,
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
        self.type = type
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension updatedatabasetoolsdatabaseapigatewayconfigpooldetails: CustomStringConvertible {
    public var description: String { "updatedatabasetoolsdatabaseapigatewayconfigpooldetails()" }
}