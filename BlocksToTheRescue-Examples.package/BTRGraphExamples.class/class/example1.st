as yet unclassified
example1

	| graph node1 node2 node3 node4 |
	node1 := BTRGraphNode new code: '{foo. bar}'.
	node2 := BTRGraphNode new code: 'one * 2'.
	node3 := BTRGraphNode new code: '''Old '', one'.
	node4 := BTRGraphNode new code: 'one asString, '' piles of '', two'.
	graph := BTRGraphModel new.
	graph nodes: {node2. node3. node4. node1}.
	graph edges: {node1 -> node2. node2 -> node4. node1 -> node3.  node3 -> node4}.
	"graph parameterNames: {'foo'. 'bar'}."
	^ graph