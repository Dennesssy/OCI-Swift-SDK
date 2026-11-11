import Foundation

// MARK: - DatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDatabaseObjectTypeEnum

public enum DatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDatabaseObjectTypeEnum: String, Codable, Sendable {
    case function = "FUNCTION"
    case mview = "MVIEW"
    case package = "PACKAGE"
    case procedure = "PROCEDURE"
    case table = "TABLE"
    case view = "VIEW"
    case dualityview = "DUALITYVIEW"
}

public extension DatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDatabaseObjectTypeEnum {
    static var allValues: [DatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDatabaseObjectTypeEnum] { [.function, .mview, .package, .procedure, .table, .view, .dualityview] }
    static var allStringValues: [String] { ["FUNCTION", "MVIEW", "PACKAGE", "PROCEDURE", "TABLE", "VIEW", "DUALITYVIEW"] }
    static func fromString(_ value: String) -> DatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDatabaseObjectTypeEnum? { DatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDatabaseObjectTypeEnum(rawValue: value) }
}