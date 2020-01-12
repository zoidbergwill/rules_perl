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

use strict;
use warnings;

use Test::More tests => 3;

use examples::YAML::yaml_example;

my @strings = ("foo", "bar", "baz");

my $config = yaml_example::get_doc();
for my $i (0 .. $#strings) {
  my $expected = $strings[$i];
  my $result = $config->[$i];
  is($expected, $result, "\$config->[$i] == $expected");
}
