import Foundation

// MARK: - executesqldatabasetoolsconnectiondetails

public struct executesqldatabasetoolsconnectiondetails: Codable, Sendable {

    public var jsonData: Data?
    public var output: executesqloutputdetails?
    public var type: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, output, type
    }

    public init(
                jsonData: Data? = nil,
                output: executesqloutputdetails? = nil,
                type: String? = nil
    ) {
        self.jsonData = jsonData
        self.output = output
        self.type = type
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension executesqldatabasetoolsconnectiondetails: CustomStringConvertible {
    public var description: String { "executesqldatabasetoolsconnectiondetails()" }
}