import Foundation

// MARK: - tlsverifyconfig

public struct tlsverifyconfig: Codable, Sendable {

    public var jsonData: Data?
    public var tlsVerifyMode: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, tlsVerifyMode
    }

    public init(
                jsonData: Data? = nil,
                tlsVerifyMode: String? = nil
    ) {
        self.jsonData = jsonData
        self.tlsVerifyMode = tlsVerifyMode
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension tlsverifyconfig: CustomStringConvertible {
    public var description: String { "tlsverifyconfig()" }
}