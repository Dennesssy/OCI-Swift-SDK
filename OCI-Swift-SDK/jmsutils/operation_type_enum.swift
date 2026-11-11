import Foundation

// MARK: - OperationTypeEnum

public enum OperationTypeEnum: String, Codable, Sendable {
    case requestJavaMigrationSaAnalysis = "REQUEST_JAVA_MIGRATION_SA_ANALYSIS"
    case requestPerformanceTuningSaAnalysis = "REQUEST_PERFORMANCE_TUNING_SA_ANALYSIS"
}

public extension OperationTypeEnum {
    static var allValues: [OperationTypeEnum] { [.requestJavaMigrationSaAnalysis, .requestPerformanceTuningSaAnalysis] }
    static var allStringValues: [String] { ["REQUEST_JAVA_MIGRATION_SA_ANALYSIS", "REQUEST_PERFORMANCE_TUNING_SA_ANALYSIS"] }
    static func fromString(_ value: String) -> OperationTypeEnum? { OperationTypeEnum(rawValue: value) }
}