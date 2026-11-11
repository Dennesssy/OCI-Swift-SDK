import Foundation

// MARK: - Streaming

public struct Streaming: Codable, Sendable {

    public var streamId: String?

    private enum CodingKeys: String, CodingKey {
        case streamId
    }

    public init(
                streamId: String? = nil
    ) {
        self.streamId = streamId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension Streaming: CustomStringConvertible {
    public var description: String { "Streaming()" }
}