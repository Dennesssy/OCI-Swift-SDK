import Foundation

// MARK: - DatabaseToolsDatabaseApiGatewayConfigAdvancedPropertySummary

public struct DatabaseToolsDatabaseApiGatewayConfigAdvancedPropertySummary: Codable, Sendable {

    public var key: String?
    public var displayName: String?
    public var dataType: DatabaseToolsDatabaseApiGatewayConfigAdvancedPropertySummaryDataTypeEnum
    public var configTypes: [DatabaseApiGatewayConfigAdvancedPropertyConfigTypeEnum]?
    public var categoryKey: String?
    public var categoryDisplayName: String?
    public var databaseToolsConnectionTypes: [DatabaseToolsDatabaseApiGatewayConfigAdvancedPropertySummaryDatabaseToolsConnectionTypesEnum]?
    public var documentationUrl: String?
    public var description: String?
    public var defaultValue: String?
    public var minValue: Int?
    public var maxValue: Int?
    public var listOfValues: [String]?
    public var hintText: String?

    private enum CodingKeys: String, CodingKey {
        case key, displayName, dataType, configTypes, categoryKey, categoryDisplayName, databaseToolsConnectionTypes, documentationUrl, description, defaultValue, minValue, maxValue, listOfValues, hintText
    }

    public init(
                key: String? = nil,
                displayName: String? = nil,
                dataType: DatabaseToolsDatabaseApiGatewayConfigAdvancedPropertySummaryDataTypeEnum,
                configTypes: [DatabaseApiGatewayConfigAdvancedPropertyConfigTypeEnum]? = nil,
                categoryKey: String? = nil,
                categoryDisplayName: String? = nil,
                databaseToolsConnectionTypes: [DatabaseToolsDatabaseApiGatewayConfigAdvancedPropertySummaryDatabaseToolsConnectionTypesEnum]? = nil,
                documentationUrl: String? = nil,
                description: String? = nil,
                defaultValue: String? = nil,
                minValue: Int? = nil,
                maxValue: Int? = nil,
                listOfValues: [String]? = nil,
                hintText: String? = nil
    ) {
        self.key = key
        self.displayName = displayName
        self.dataType = dataType
        self.configTypes = configTypes
        self.categoryKey = categoryKey
        self.categoryDisplayName = categoryDisplayName
        self.databaseToolsConnectionTypes = databaseToolsConnectionTypes
        self.documentationUrl = documentationUrl
        self.description = description
        self.defaultValue = defaultValue
        self.minValue = minValue
        self.maxValue = maxValue
        self.listOfValues = listOfValues
        self.hintText = hintText
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
