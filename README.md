# puppet-pdns-recursor

## Description
This module provides a base class for managing pdns-recursor

## Usage
Note: While any subclasses can be called independently, the main class is the preferred entry point.
      When calling subclasses, no defaults will be populated and you must provide values for all class parameters.

Calling pdns-recursor without any parameters will install, configure, and start a simple recursor that allows only from 127.0.0.1/8 and listens on all interfaces:
  
    class { 'pdns-recursor': }

Values for subclass parameters can be passed in through the main class. For example, to change which networks to allow queries from:

    class { 'pdns-recursor':
      allow_from => ['33.33.33.0/24', '192.168.0.1/24']
    }

To listen on a different port:
  
    class { 'pdns-recursor':
      local_port => 59
    }

See this modules subclasses for a list of accepted parameters and the data type expected.
