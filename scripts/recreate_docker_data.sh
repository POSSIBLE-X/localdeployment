#!/bin/bash

#  Copyright 2024-2025 Dataport. All rights reserved. Developed as part of the POSSIBLE project.
#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.

sudo rm -rf docker_data/
mkdir -p docker_data/omejdn/config
mkdir -p docker_data/omejdn/keys
mkdir -p docker_data/postgres/data
mkdir -p docker_data/piveau-hub-repo/trust
mkdir -p docker_data/virtuoso
mkdir -p docker_data/elasticsearch