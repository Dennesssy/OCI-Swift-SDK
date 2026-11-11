import Foundation

// MARK: - databasetoolsdatabaseapigatewayconfigpoolautoapispec

public struct databasetoolsdatabaseapigatewayconfigpoolautoapispec: Codable, Sendable {

    public var jsonData: Data?
    public var databaseObjectName: String?
    public var databaseObjectType: DatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDatabaseObjectTypeEnum?
    public var description: String?
    public var alias: String?
    public var operations: [DatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecOperationsEnum]?
    public var securitySchemes: [DatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecSecuritySchemesEnum]?
    public var scope: String?
    public var roles: [String]?
    public var key: String?
    public var displayName: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var type: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, databaseObjectName, databaseObjectType, description, alias, operations, securitySchemes, scope, roles, key, displayName, timeCreated, timeUpdated, type
    }

    public init(
                jsonData: Data? = nil,
                databaseObjectName: String? = nil,
                databaseObjectType: DatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDatabaseObjectTypeEnum? = nil,
                description: String? = nil,
                alias: String? = nil,
                operations: [DatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecOperationsEnum]? = nil,
                securitySchemes: [DatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecSecuritySchemesEnum]? = nil,
                scope: String? = nil,
                roles: [String]? = nil,
                key: String? = nil,
                displayName: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                type: String? = nil
    ) {
        self.jsonData = jsonData
        self.databaseObjectName = databaseObjectName
        self.databaseObjectType = databaseObjectType
        self.description = description
        self.alias = alias
        self.operations = operations
        self.securitySchemes = securitySchemes
        self.scope = scope
        self.roles = roles
        self.key = key
        self.displayName = displayName
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.type = type
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
