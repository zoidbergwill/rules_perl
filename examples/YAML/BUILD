# Copyright 2016 The Bazel Authors. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http:#www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

package(default_visibility = ["//visibility:public"])

load(
    "//perl:perl.bzl",
    "perl_library",
    "perl_test"
)

perl_library(
    name = "yaml_example",
    srcs = ["yaml_example.pm"],
	deps = [
		"//third_party/lib/perl5:YAML_Tiny"
	],
)

perl_test(
    name = "yaml_example_test",
    deps = [
		":yaml_example",
		"//third_party/lib/perl5:YAML_Tiny",
    ],
    srcs = ["yaml_example_test.t"],
)
