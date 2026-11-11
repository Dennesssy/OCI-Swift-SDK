import Foundation

// MARK: - FtpProtocolEnum

public enum FtpProtocolEnum: String, Codable, Sendable {
    case ftp = "FTP"
    case ftps = "FTPS"
    case sftp = "SFTP"
}

public extension FtpProtocolEnum {
    static var allValues: [FtpProtocolEnum] { [.ftp, .ftps, .sftp] }
    static var allStringValues: [String] { ["FTP", "FTPS", "SFTP"] }
    static func fromString(_ value: String) -> FtpProtocolEnum? { FtpProtocolEnum(rawValue: value) }
}