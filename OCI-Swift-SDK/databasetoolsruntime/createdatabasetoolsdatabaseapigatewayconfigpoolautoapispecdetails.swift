import Foundation

// MARK: - createdatabasetoolsdatabaseapigatewayconfigpoolautoapispecdetails

public struct createdatabasetoolsdatabaseapigatewayconfigpoolautoapispecdetails: Codable, Sendable {

    public var jsonData: Data?
    public var description: String?
    public var alias: String?
    public var operations: [CreateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetailsOperationsEnum]?
    public var securitySchemes: [CreateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetailsSecuritySchemesEnum]?
    public var scope: String?
    public var roles: [String]?
    public var displayName: String?
    public var databaseObjectName: String?
    public var databaseObjectType: CreateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetailsDatabaseObjectTypeEnum
    public var type: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, description, alias, operations, securitySchemes, scope, roles, displayName, databaseObjectName, databaseObjectType, type
    }

    public init(
                jsonData: Data? = nil,
                description: String? = nil,
                alias: String? = nil,
                operations: [CreateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetailsOperationsEnum]? = nil,
                securitySchemes: [CreateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetailsSecuritySchemesEnum]? = nil,
                scope: String? = nil,
                roles: [String]? = nil,
                displayName: String? = nil,
                databaseObjectName: String? = nil,
                databaseObjectType: CreateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetailsDatabaseObjectTypeEnum,
                type: String? = nil
    ) {
        self.jsonData = jsonData
        self.description = description
        self.alias = alias
        self.operations = operations
        self.securitySchemes = securitySchemes
        self.scope = scope
        self.roles = roles
        self.displayName = displayName
        self.databaseObjectName = databaseObjectName
        self.databaseObjectType = databaseObjectType
        self.type = type
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
