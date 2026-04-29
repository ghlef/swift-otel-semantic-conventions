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

extension OTelAttribute {
    #if Experimental
    /// `oracle_cloud` namespace
    public enum oracleCloud {
        /// `oracle_cloud.realm` **UNSTABLE**: The OCI realm identifier that indicates the isolated partition in which the tenancy and its resources reside.
        ///
        /// - Stability: development
        /// - Type: string
        /// - Examples:
        ///     - `oc1`
        ///     - `oc2`
        ///
        /// See [OCI documentation on realms](https://docs.oracle.com/iaas/Content/General/Concepts/regions.htm)
        public static let realm = "oracle_cloud.realm"
    }
    #endif
}
