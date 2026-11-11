import Foundation

// MARK: - HostInfo

public struct HostInfo: Codable, Sendable {

    public var hostName: String?
    public var hostCores: Int?

    private enum CodingKeys: String, CodingKey {
        case hostName, hostCores
    }

    public init(
                hostName: String? = nil,
                hostCores: Int? = nil
    ) {
        self.hostName = hostName
        self.hostCores = hostCores
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension HostInfo: CustomStringConvertible {
    public var description: String { "HostInfo()" }
}