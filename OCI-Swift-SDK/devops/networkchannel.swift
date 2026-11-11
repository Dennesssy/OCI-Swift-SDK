import Foundation

// MARK: - networkchannel

public struct networkchannel: Codable, Sendable {

    public var jsonData: Data?
    public var networkChannelType: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, networkChannelType
    }

    public init(
                jsonData: Data? = nil,
                networkChannelType: String? = nil
    ) {
        self.jsonData = jsonData
        self.networkChannelType = networkChannelType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension networkchannel: CustomStringConvertible {
    public var description: String { "networkchannel()" }
}