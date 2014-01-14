# Copyright 2014 Miguel Zuniga ( miguel-zuniga at hotmail.com )
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.#
#
# Class: kibana
#
# Deploys kibana logstash web interface
#
# Parameters:
#
# Requires:
#       None
#

class logstash (

  $version              = '2.1',
  $enable               = true,
  $start                = true,
  $java_mem             = $logstash::params::java_mem,
  $workers              = $logstash::params::workers,
  $logfile              = $logstash::params::logfile,
  $grok_path            = $logstash::params::grok_path,
  $input, $output, $filter

) { 

  case $::operatingsystem {

    'Redhat', 'CentOS':		{ require logstash::redhat::service }
    'Ubuntu':			{ require logstash::ubuntu::service }
    default:			{ require logstash::redhat::service }

  }

}
