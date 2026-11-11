import Foundation

// MARK: - TenancyAttachmentDataPopulation

public struct TenancyAttachmentDataPopulation: Codable, Sendable {

    public var status: TenancyAttachmentDataPopulationStatusEnum
    public var timeStarted: Date?
    public var inProgressCount: Int?
    public var succeededCount: Int?
    public var totalCount: Int?
    public var timeEnded: Date?

    private enum CodingKeys: String, CodingKey {
        case status, timeStarted, inProgressCount, succeededCount, totalCount, timeEnded
    }

    public init(
                status: TenancyAttachmentDataPopulationStatusEnum,
                timeStarted: Date? = nil,
                inProgressCount: Int? = nil,
                succeededCount: Int? = nil,
                totalCount: Int? = nil,
                timeEnded: Date? = nil
    ) {
        self.status = status
        self.timeStarted = timeStarted
        self.inProgressCount = inProgressCount
        self.succeededCount = succeededCount
        self.totalCount = totalCount
        self.timeEnded = timeEnded
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension TenancyAttachmentDataPopulation: CustomStringConvertible {
    public var description: String { "TenancyAttachmentDataPopulation()" }
}