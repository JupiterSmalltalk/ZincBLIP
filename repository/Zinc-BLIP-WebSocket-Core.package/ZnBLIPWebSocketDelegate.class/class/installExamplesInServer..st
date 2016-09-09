examples
installExamplesInServer: znServer
  "Install the WebSocket examples in znServer, provided it has a ZnDefaultServerDelegate"

  znServer delegate
    map: 'blip' to: (self map: 'blip' to: ZnBLIPWebSocketHandler new);
    map: 'blip-version'
      to: [ :request | ZnResponse ok: (ZnEntity html: ZnBLIPWebSocketHandler versionHtml) ];
    map: 'ws-status-client'
      to: [ :request | ZnResponse ok: (ZnEntity html: ZnWebSocketStatusHandler clientHtml) ];
    map: 'ws-status'
      to: (self map: 'ws-status' to: ZnWebSocketStatusHandler new)