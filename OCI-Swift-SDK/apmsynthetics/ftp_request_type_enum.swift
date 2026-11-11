import Foundation

// MARK: - FtpRequestTypeEnum

public enum FtpRequestTypeEnum: String, Codable, Sendable {
    case list = "LIST"
    case upload = "UPLOAD"
    case download = "DOWNLOAD"
}

public extension FtpRequestTypeEnum {
    static var allValues: [FtpRequestTypeEnum] { [.list, .upload, .download] }
    static var allStringValues: [String] { ["LIST", "UPLOAD", "DOWNLOAD"] }
    static func fromString(_ value: String) -> FtpRequestTypeEnum? { FtpRequestTypeEnum(rawValue: value) }
}