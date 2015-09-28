# Copyright (C) 2015 MongoDB Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
require 'java'
require 'bson-ruby.jar'
import 'org.bson.ByteBuf'

module BSON
  class ByteBuffer

    def initialize(bytes = nil)
      @buffer = bytes ? ByteBuf.new(bytes) : ByteBuf.new
    end

    def put_double(value)
      @buffer.put_double(value)
      self
    end
  end
end
