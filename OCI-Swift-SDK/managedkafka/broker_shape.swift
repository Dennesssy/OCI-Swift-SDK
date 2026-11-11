import Foundation

// MARK: - BrokerShape

public struct BrokerShape: Codable, Sendable {

    public var nodeCount: Int?
    public var ocpuCount: Int?
    public var storageSizeInGbs: Int?
    public var nodeShape: String?

    private enum CodingKeys: String, CodingKey {
        case nodeCount, ocpuCount, storageSizeInGbs, nodeShape
    }

    public init(
                nodeCount: Int? = nil,
                ocpuCount: Int? = nil,
                storageSizeInGbs: Int? = nil,
                nodeShape: String? = nil
    ) {
        self.nodeCount = nodeCount
        self.ocpuCount = ocpuCount
        self.storageSizeInGbs = storageSizeInGbs
        self.nodeShape = nodeShape
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BrokerShape: CustomStringConvertible {
    public var description: String { "BrokerShape()" }
}