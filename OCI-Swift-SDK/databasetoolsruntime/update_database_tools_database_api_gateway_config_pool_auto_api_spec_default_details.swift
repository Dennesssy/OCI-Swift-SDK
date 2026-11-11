import Foundation

// MARK: - UpdateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDefaultDetails

public struct UpdateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDefaultDetails: Codable, Sendable {

    public var displayName: String?
    public var databaseObjectName: String?
    public var description: String?
    public var alias: String?
    public var scope: String?
    public var roles: [String]?
    public var databaseObjectType: UpdateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetailsDatabaseObjectTypeEnum?
    public var operations: [UpdateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetailsOperationsEnum]?
    public var securitySchemes: [UpdateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetailsSecuritySchemesEnum]?

    private enum CodingKeys: String, CodingKey {
        case displayName, databaseObjectName, description, alias, scope, roles, databaseObjectType, operations, securitySchemes
    }

    public init(
                displayName: String? = nil,
                databaseObjectName: String? = nil,
                description: String? = nil,
                alias: String? = nil,
                scope: String? = nil,
                roles: [String]? = nil,
                databaseObjectType: UpdateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetailsDatabaseObjectTypeEnum? = nil,
                operations: [UpdateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetailsOperationsEnum]? = nil,
                securitySchemes: [UpdateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetailsSecuritySchemesEnum]? = nil
    ) {
        self.displayName = displayName
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
