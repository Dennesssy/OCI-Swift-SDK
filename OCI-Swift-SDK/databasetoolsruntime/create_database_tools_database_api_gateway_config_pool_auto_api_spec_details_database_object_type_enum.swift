import Foundation

// MARK: - CreateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetailsDatabaseObjectTypeEnum

public enum CreateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetailsDatabaseObjectTypeEnum: String, Codable, Sendable {
    case function = "FUNCTION"
    case mview = "MVIEW"
    case package = "PACKAGE"
    case procedure = "PROCEDURE"
    case table = "TABLE"
    case view = "VIEW"
    case dualityview = "DUALITYVIEW"
}

public extension CreateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetailsDatabaseObjectTypeEnum {
    static var allValues: [CreateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetailsDatabaseObjectTypeEnum] { [.function, .mview, .package, .procedure, .table, .view, .dualityview] }
    static var allStringValues: [String] { ["FUNCTION", "MVIEW", "PACKAGE", "PROCEDURE", "TABLE", "VIEW", "DUALITYVIEW"] }
    static func fromString(_ value: String) -> CreateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetailsDatabaseObjectTypeEnum? { CreateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetailsDatabaseObjectTypeEnum(rawValue: value) }
}