public
handleRequest: request gemServer: gemServer
  gemServer
    gemServerTransaction: [ ^ self handleRequest: request ]
    exceptionSet: ExceptionSet new