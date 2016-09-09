service instance-server
startBasicServerOn: port
  "start instance of a BLIP handler. expected to return."

  | handler delegate znServer |
  znServer := self serverClass on: port.
  handler := ZnBLIPWebSocketHandler new.
  delegate := ZnBLIPGsWebSocketDelegate handler: handler.
  ZnBLIPGsWebSocketDelegate installExamplesInServer: znServer.
  znServer delegate: delegate.
  self serverInstance: znServer.
  self
    basicServerProcess:
      ([ self basicServerOn: port ] forkAt: Processor highIOPriority)