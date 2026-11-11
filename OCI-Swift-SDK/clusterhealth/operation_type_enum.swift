import Foundation

// MARK: - OperationTypeEnum

public enum OperationTypeEnum: String, Codable, Sendable {
    case createDiagnosisStore = "CREATE_DIAGNOSIS_STORE"
    case updateDiagnosisStore = "UPDATE_DIAGNOSIS_STORE"
    case deleteDiagnosisStore = "DELETE_DIAGNOSIS_STORE"
    case moveDiagnosisStore = "MOVE_DIAGNOSIS_STORE"
    case requestDiagnosis = "REQUEST_DIAGNOSIS"
}

public extension OperationTypeEnum {
    static var allValues: [OperationTypeEnum] { [.createDiagnosisStore, .updateDiagnosisStore, .deleteDiagnosisStore, .moveDiagnosisStore, .requestDiagnosis] }
    static var allStringValues: [String] { ["CREATE_DIAGNOSIS_STORE", "UPDATE_DIAGNOSIS_STORE", "DELETE_DIAGNOSIS_STORE", "MOVE_DIAGNOSIS_STORE", "REQUEST_DIAGNOSIS"] }
    static func fromString(_ value: String) -> OperationTypeEnum? { OperationTypeEnum(rawValue: value) }
}