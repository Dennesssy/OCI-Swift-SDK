import Foundation

// MARK: - Node

public struct Node: Codable, Sendable {

    public var id: String?
    public var ipAddress: String?
    public var displayName: String?
    public var geoInfo: String?
    public var outgoingLinks: [String]?
    public var consecutiveAnonymousCount: Int?
    public var level: Int?
    public var avgPacketResponseTimeInMs: Double?
    public var avgPacketLossPercent: Double?
    public var type: NodeTypeEnum?

    private enum CodingKeys: String, CodingKey {
        case id, ipAddress, displayName, geoInfo, outgoingLinks, consecutiveAnonymousCount, level, avgPacketResponseTimeInMs, avgPacketLossPercent, type
    }

    public init(
                id: String? = nil,
                ipAddress: String? = nil,
                displayName: String? = nil,
                geoInfo: String? = nil,
                outgoingLinks: [String]? = nil,
                consecutiveAnonymousCount: Int? = nil,
                level: Int? = nil,
                avgPacketResponseTimeInMs: Double? = nil,
                avgPacketLossPercent: Double? = nil,
                type: NodeTypeEnum? = nil
    ) {
        self.id = id
        self.ipAddress = ipAddress
        self.displayName = displayName
        self.geoInfo = geoInfo
        self.outgoingLinks = outgoingLinks
        self.consecutiveAnonymousCount = consecutiveAnonymousCount
        self.level = level
        self.avgPacketResponseTimeInMs = avgPacketResponseTimeInMs
        self.avgPacketLossPercent = avgPacketLossPercent
        self.type = type
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension Node: CustomStringConvertible {
    public var description: String { "Node()" }
}