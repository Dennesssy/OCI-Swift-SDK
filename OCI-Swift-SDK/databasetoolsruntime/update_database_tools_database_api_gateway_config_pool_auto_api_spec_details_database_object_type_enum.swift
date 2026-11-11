import Foundation

// MARK: - UpdateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetailsDatabaseObjectTypeEnum

public enum UpdateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetailsDatabaseObjectTypeEnum: String, Codable, Sendable {
    case function = "FUNCTION"
    case mview = "MVIEW"
    case package = "PACKAGE"
    case procedure = "PROCEDURE"
    case table = "TABLE"
    case view = "VIEW"
    case dualityview = "DUALITYVIEW"
}

public extension UpdateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetailsDatabaseObjectTypeEnum {
    static var allValues: [UpdateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetailsDatabaseObjectTypeEnum] { [.function, .mview, .package, .procedure, .table, .view, .dualityview] }
    static var allStringValues: [String] { ["FUNCTION", "MVIEW", "PACKAGE", "PROCEDURE", "TABLE", "VIEW", "DUALITYVIEW"] }
    static func fromString(_ value: String) -> UpdateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetailsDatabaseObjectTypeEnum? { UpdateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetailsDatabaseObjectTypeEnum(rawValue: value) }
}