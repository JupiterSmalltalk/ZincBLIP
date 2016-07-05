baseline
baseline: spec
  <baseline>
  spec
    for: #'common'
    do: [ 
      spec
        package: 'Zinc-BLIP-TCP';
        package: 'Zinc-BLIP-Core' with: [ spec requires: #('Zinc-BLIP-TCP') ];
        package: 'Zinc-BLIP-WebSocket-Core'
          with: [ spec requires: #('Zinc-BLIP-Core') ] ]