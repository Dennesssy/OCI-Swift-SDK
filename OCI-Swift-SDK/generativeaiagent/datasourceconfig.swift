import Foundation

// MARK: - datasourceconfig

public struct datasourceconfig: Codable, Sendable {

    public var jsonData: Data?
    public var shouldEnableMultiModality: Bool?
    public var dataSourceConfigType: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, shouldEnableMultiModality, dataSourceConfigType
    }

    public init(
                jsonData: Data? = nil,
                shouldEnableMultiModality: Bool? = nil,
                dataSourceConfigType: String? = nil
    ) {
        self.jsonData = jsonData
        self.shouldEnableMultiModality = shouldEnableMultiModality
        self.dataSourceConfigType = dataSourceConfigType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension datasourceconfig: CustomStringConvertible {
    public var description: String { "datasourceconfig()" }
}