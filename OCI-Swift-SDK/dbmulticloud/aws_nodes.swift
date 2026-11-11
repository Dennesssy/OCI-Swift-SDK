import Foundation

// MARK: - AwsNodes

public struct AwsNodes: Codable, Sendable {

    public var hostName: String?
    public var hostId: String?
    public var status: AwsNodesStatusEnum?
    public var timeLastChecked: Date?

    private enum CodingKeys: String, CodingKey {
        case hostName, hostId, status, timeLastChecked
    }

    public init(
                hostName: String? = nil,
                hostId: String? = nil,
                status: AwsNodesStatusEnum? = nil,
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

extension AwsNodes: CustomStringConvertible {
    public var description: String { "AwsNodes()" }
}