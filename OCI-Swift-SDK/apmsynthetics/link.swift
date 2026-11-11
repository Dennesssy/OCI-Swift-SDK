import Foundation

// MARK: - Link

public struct Link: Codable, Sendable {

    public var id: String?
    public var source: String?
    public var destination: String?
    public var repeatCount: Int?
    public var forwardingLoss: Double?
    public var delayInMilliseconds: Double?
    public var minDelayInMilliseconds: Double?
    public var maxDelayInMilliseconds: Double?
    public var paths: [String]?

    private enum CodingKeys: String, CodingKey {
        case id, source, destination, repeatCount, forwardingLoss, delayInMilliseconds, minDelayInMilliseconds, maxDelayInMilliseconds, paths
    }

    public init(
                id: String? = nil,
                source: String? = nil,
                destination: String? = nil,
                repeatCount: Int? = nil,
                forwardingLoss: Double? = nil,
                delayInMilliseconds: Double? = nil,
                minDelayInMilliseconds: Double? = nil,
                maxDelayInMilliseconds: Double? = nil,
                paths: [String]? = nil
    ) {
        self.id = id
        self.source = source
        self.destination = destination
        self.repeatCount = repeatCount
        self.forwardingLoss = forwardingLoss
        self.delayInMilliseconds = delayInMilliseconds
        self.minDelayInMilliseconds = minDelayInMilliseconds
        self.maxDelayInMilliseconds = maxDelayInMilliseconds
        self.paths = paths
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension Link: CustomStringConvertible {
    public var description: String { "Link()" }
}