execution
pollArguments: aNode

	^ (self graph incoming: aNode) collect: [:edge | self activeEdges removeKey: edge]