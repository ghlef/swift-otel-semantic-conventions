//===----------------------------------------------------------------------===//
//
// This source file is part of the Swift OTel open source project
//
// Copyright (c) 2025 the Swift OTel project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// DO NOT EDIT. This file is generated automatically. See README for details.

#if Tracing

import Tracing

extension SpanAttributes {
    #if Experimental
    /// `message` namespace
    public var message: MessageAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    public struct MessageAttributes: SpanAttributeNamespace {
        public var attributes: Tracing.SpanAttributes

        public init(attributes: Tracing.SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}

            /// `message.compressed_size` **UNSTABLE**: Deprecated, no replacement at this time.
            ///
            /// - Stability: development
            /// - Type: int
            @available(*, deprecated, message: "Obsoleted: Deprecated, no replacement at this time.")
            public var compressedSize: SpanAttributeKey<Int> { .init(name: OTelAttribute.message.compressedSize) }

            /// `message.id` **UNSTABLE**: Deprecated, no replacement at this time.
            ///
            /// - Stability: development
            /// - Type: int
            @available(*, deprecated, message: "Obsoleted: Deprecated, no replacement at this time.")
            public var id: SpanAttributeKey<Int> { .init(name: OTelAttribute.message.id) }

            /// `message.type` **UNSTABLE**: Deprecated, no replacement at this time.
            ///
            /// - Stability: development
            /// - Type: enum
            ///     - `SENT`
            ///     - `RECEIVED`
            @available(*, deprecated, message: "Obsoleted: Deprecated, no replacement at this time.")
            public var `type`: SpanAttributeKey<TypeEnum> { .init(name: OTelAttribute.message.`type`) }

            public struct TypeEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                public let rawValue: String
                public init(rawValue: String) {
                    self.rawValue = rawValue
                }
                public func toSpanAttribute() -> Tracing.SpanAttribute {
                    .string(self.rawValue)
                }
            }

            /// `message.uncompressed_size` **UNSTABLE**: Deprecated, no replacement at this time.
            ///
            /// - Stability: development
            /// - Type: int
            @available(*, deprecated, message: "Obsoleted: Deprecated, no replacement at this time.")
            public var uncompressedSize: SpanAttributeKey<Int> { .init(name: OTelAttribute.message.uncompressedSize) }
        }
    }
    #endif
}

#endif
