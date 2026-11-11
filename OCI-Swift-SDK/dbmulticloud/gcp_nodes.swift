import Foundation

// MARK: - GcpNodes

public struct GcpNodes: Codable, Sendable {

    public var hostName: String?
    public var hostId: String?
    public var status: GcpNodesStatusEnum?
    public var timeLastChecked: Date?

    private enum CodingKeys: String, CodingKey {
        case hostName, hostId, status, timeLastChecked
    }

    public init(
                hostName: String? = nil,
                hostId: String? = nil,
                status: GcpNodesStatusEnum? = nil,
                timeLastChecked: Date? = nil
    ) {
        self.hostName = hostName
        self.hostId = hostId
        self.status = status
        self.timeLastChecked = timeLastChecked
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GcpNodes: CustomStringConvertible {
    public var description: String { "GcpNodes()" }
}