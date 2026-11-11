import Foundation

// MARK: - ArcAgentNodes

public struct ArcAgentNodes: Codable, Sendable {

    public var hostName: String?
    public var hostId: String?
    public var currentArcAgentVersion: String?
    public var status: ArcAgentNodesStatusEnum?
    public var timeLastChecked: Date?

    private enum CodingKeys: String, CodingKey {
        case hostName, hostId, currentArcAgentVersion, status, timeLastChecked
    }

    public init(
                hostName: String? = nil,
                hostId: String? = nil,
                currentArcAgentVersion: String? = nil,
                status: ArcAgentNodesStatusEnum? = nil,
                timeLastChecked: Date? = nil
    ) {
        self.hostName = hostName
        self.hostId = hostId
        self.currentArcAgentVersion = currentArcAgentVersion
        self.status = status
        self.timeLastChecked = timeLastChecked
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ArcAgentNodes: CustomStringConvertible {
    public var description: String { "ArcAgentNodes()" }
}