import Foundation

// MARK: - CreateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDefaultDetails

public struct CreateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDefaultDetails: Codable, Sendable {

    public var displayName: String?
    public var databaseObjectName: String?
    public var description: String?
    public var alias: String?
    public var scope: String?
    public var roles: [String]?
    public var databaseObjectType: CreateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetailsDatabaseObjectTypeEnum
    public var operations: [CreateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetailsOperationsEnum]?
    public var securitySchemes: [CreateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetailsSecuritySchemesEnum]?

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
                databaseObjectType: CreateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetailsDatabaseObjectTypeEnum,
                operations: [CreateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetailsOperationsEnum]? = nil,
                securitySchemes: [CreateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetailsSecuritySchemesEnum]? = nil
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
