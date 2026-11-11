import Foundation

// MARK: - MaintenanceWindow

public struct MaintenanceWindow: Codable, Sendable {

    public var preference: MaintenancePreferenceEnum?
    public var patchingMode: BasePatchingModeEnum?
    public var isCustomActionTimeoutEnabled: Bool?
    public var customActionTimeoutInMins: Int?
    public var isMonthlyPatchingEnabled: Bool?
    public var months: [MaintenanceWindowMonthsEnum]?
    public var weeksOfMonth: [Int]?
    public var daysOfWeek: [MaintenanceWindowDaysOfWeekEnum]?
    public var hoursOfDay: [Int]?
    public var leadTimeInWeeks: Int?

    private enum CodingKeys: String, CodingKey {
        case preference, patchingMode, isCustomActionTimeoutEnabled, customActionTimeoutInMins, isMonthlyPatchingEnabled, months, weeksOfMonth, daysOfWeek, hoursOfDay, leadTimeInWeeks
    }

    public init(
                preference: MaintenancePreferenceEnum? = nil,
                patchingMode: BasePatchingModeEnum? = nil,
                isCustomActionTimeoutEnabled: Bool? = nil,
                customActionTimeoutInMins: Int? = nil,
                isMonthlyPatchingEnabled: Bool? = nil,
                months: [MaintenanceWindowMonthsEnum]? = nil,
                weeksOfMonth: [Int]? = nil,
                daysOfWeek: [MaintenanceWindowDaysOfWeekEnum]? = nil,
                hoursOfDay: [Int]? = nil,
                leadTimeInWeeks: Int? = nil
    ) {
        self.preference = preference
        self.patchingMode = patchingMode
        self.isCustomActionTimeoutEnabled = isCustomActionTimeoutEnabled
        self.customActionTimeoutInMins = customActionTimeoutInMins
        self.isMonthlyPatchingEnabled = isMonthlyPatchingEnabled
        self.months = months
        self.weeksOfMonth = weeksOfMonth
        self.daysOfWeek = daysOfWeek
        self.hoursOfDay = hoursOfDay
        self.leadTimeInWeeks = leadTimeInWeeks
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension MaintenanceWindow: CustomStringConvertible {
    public var description: String { "MaintenanceWindow()" }
}