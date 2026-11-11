import Foundation

// MARK: - GetMirrorRecordMirrorRecordTypeEnum

public enum GetMirrorRecordMirrorRecordTypeEnum: String, Codable, Sendable {
    case current = "current"
    case lastsuccessful = "lastSuccessful"
}

public extension GetMirrorRecordMirrorRecordTypeEnum {
    static var allValues: [GetMirrorRecordMirrorRecordTypeEnum] { [.current, .lastsuccessful] }
    static var allStringValues: [String] { ["current", "lastSuccessful"] }
    static func fromString(_ value: String) -> GetMirrorRecordMirrorRecordTypeEnum? { GetMirrorRecordMirrorRecordTypeEnum(rawValue: value) }
}