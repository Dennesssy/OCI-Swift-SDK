import Foundation

// MARK: - WorkerMonitorList

public struct WorkerMonitorList: Codable, Sendable {

    public var id: String?
    public var displayName: String?
    public var monitorType: MonitorTypesEnum
    public var isRunNow: Bool?
    public var timeAssigned: Date?

    private enum CodingKeys: String, CodingKey {
        case id, displayName, monitorType, isRunNow, timeAssigned
    }

    public init(
                id: String? = nil,
                displayName: String? = nil,
                monitorType: MonitorTypesEnum,
                isRunNow: Bool? = nil,
                timeAssigned: Date? = nil
    ) {
        self.id = id
        self.displayName = displayName
        self.monitorType = monitorType
        self.isRunNow = isRunNow
        self.timeAssigned = timeAssigned
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension WorkerMonitorList: CustomStringConvertible {
    public var description: String { "WorkerMonitorList()" }
}