import Foundation

// MARK: - VantagePointInfo

public struct VantagePointInfo: Codable, Sendable {

    public var name: String?
    public var displayName: String?
    public var workerList: [String]?

    private enum CodingKeys: String, CodingKey {
        case name, displayName, workerList
    }

    public init(
                name: String? = nil,
                displayName: String? = nil,
                workerList: [String]? = nil
    ) {
        self.name = name
        self.displayName = displayName
        self.workerList = workerList
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension VantagePointInfo: CustomStringConvertible {
    public var description: String { "VantagePointInfo()" }
}