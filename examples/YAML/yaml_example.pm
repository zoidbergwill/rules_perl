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

use YAML::Tiny;

package yaml_example;

sub get_doc() {
    my $doc = <<"EOF";
---
- foo
- bar
- baz
EOF
    
    my $yaml = YAML::Tiny->read_string($doc);
     
    # Get a reference to the first document
    my $config = $yaml->[0];
	return $config
}

1;
