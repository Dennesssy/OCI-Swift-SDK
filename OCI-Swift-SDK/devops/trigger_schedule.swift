import Foundation

// MARK: - TriggerSchedule

public struct TriggerSchedule: Codable, Sendable {

    public var scheduleType: TriggerScheduleScheduleTypeEnum
    public var customSchedule: String?

    private enum CodingKeys: String, CodingKey {
        case scheduleType, customSchedule
    }

    public init(
                scheduleType: TriggerScheduleScheduleTypeEnum,
                customSchedule: String? = nil
    ) {
        self.scheduleType = scheduleType
        self.customSchedule = customSchedule
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension TriggerSchedule: CustomStringConvertible {
    public var description: String { "TriggerSchedule()" }
}