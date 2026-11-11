import Foundation

// MARK: - GdpPipelineCollection

public struct GdpPipelineCollection: Codable, Sendable {

    public var items: [GdpPipelineSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [GdpPipelineSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GdpPipelineCollection: CustomStringConvertible {
    public var description: String { "GdpPipelineCollection()" }
}