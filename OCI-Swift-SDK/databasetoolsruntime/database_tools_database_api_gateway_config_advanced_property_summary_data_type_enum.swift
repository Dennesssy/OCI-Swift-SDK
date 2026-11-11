import Foundation

// MARK: - DatabaseToolsDatabaseApiGatewayConfigAdvancedPropertySummaryDataTypeEnum

public enum DatabaseToolsDatabaseApiGatewayConfigAdvancedPropertySummaryDataTypeEnum: String, Codable, Sendable {
    case string = "STRING"
    case number = "NUMBER"
    case duration = "DURATION"
    case boolean = "BOOLEAN"
}

public extension DatabaseToolsDatabaseApiGatewayConfigAdvancedPropertySummaryDataTypeEnum {
    static var allValues: [DatabaseToolsDatabaseApiGatewayConfigAdvancedPropertySummaryDataTypeEnum] { [.string, .number, .duration, .boolean] }
    static var allStringValues: [String] { ["STRING", "NUMBER", "DURATION", "BOOLEAN"] }
    static func fromString(_ value: String) -> DatabaseToolsDatabaseApiGatewayConfigAdvancedPropertySummaryDataTypeEnum? { DatabaseToolsDatabaseApiGatewayConfigAdvancedPropertySummaryDataTypeEnum(rawValue: value) }
}