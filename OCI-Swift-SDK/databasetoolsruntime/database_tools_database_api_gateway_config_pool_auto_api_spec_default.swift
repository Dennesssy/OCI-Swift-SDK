import Foundation

// MARK: - DatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDefault

public struct DatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDefault: Codable, Sendable {

    public var key: String?
    public var displayName: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var databaseObjectName: String?
    public var description: String?
    public var alias: String?
    public var scope: String?
    public var roles: [String]?
    public var databaseObjectType: DatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDatabaseObjectTypeEnum?
    public var operations: [DatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecOperationsEnum]?
    public var securitySchemes: [DatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecSecuritySchemesEnum]?

    private enum CodingKeys: String, CodingKey {
        case key, displayName, timeCreated, timeUpdated, databaseObjectName, description, alias, scope, roles, databaseObjectType, operations, securitySchemes
    }

    public init(
                key: String? = nil,
                displayName: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                databaseObjectName: String? = nil,
                description: String? = nil,
                alias: String? = nil,
                scope: String? = nil,
                roles: [String]? = nil,
                databaseObjectType: DatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDatabaseObjectTypeEnum? = nil,
                operations: [DatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecOperationsEnum]? = nil,
                securitySchemes: [DatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecSecuritySchemesEnum]? = nil
    ) {
        self.key = key
        self.displayName = displayName
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.databaseObjectName = databaseObjectName
        self.description = description
        self.alias = alias
        self.scope = scope
        self.roles = roles
        self.databaseObjectType = databaseObjectType
        self.operations = operations
        self.securitySchemes = securitySchemes
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
