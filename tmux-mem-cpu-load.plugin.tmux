 # vim: tabstop=2 shiftwidth=2 expandtab textwidth=80 linebreak wrap
 #
 # Copyright 2012 Matthew McCormick
 # Copyright 2015 Pawel 'l0ner' Soltys
 #
 # Licensed under the Apache License, Version 2.0 (the "License");
 # you may not use this file except in compliance with the License.
 # You may obtain a copy of the License at
 #
 #     http://www.apache.org/licenses/LICENSE-2.0
 #
 # Unless required by applicable law or agreed to in writing, software
 # distributed under the License is distributed on an "AS IS" BASIS,
 # WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 # See the License for the specific language governing permissions and
 # limitations under the License.

# The directory where this plugin is located.
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Add the plugin directory to the tmux path so that users can reference
# tmux-mem-cpu-load directly from `.tmux.conf`.
tmux set-environment PATH "$PATH:$CURRENT_DIR"

pushd $CURRENT_DIR #Pushd to the directory where this plugin is located.
cmake .
make
popd
