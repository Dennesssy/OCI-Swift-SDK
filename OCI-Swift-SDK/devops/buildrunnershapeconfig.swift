import Foundation

// MARK: - buildrunnershapeconfig

public struct buildrunnershapeconfig: Codable, Sendable {

    public var jsonData: Data?
    public var buildRunnerType: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, buildRunnerType
    }

    public init(
                jsonData: Data? = nil,
                buildRunnerType: String? = nil
    ) {
        self.jsonData = jsonData
        self.buildRunnerType = buildRunnerType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension buildrunnershapeconfig: CustomStringConvertible {
    public var description: String { "buildrunnershapeconfig()" }
}