rendering
renderContentOn: html
	(html tag: 'style') with:
	'h1, a { font-family: monospace }
	'.
	html render: counter.
	html script: 'console.info("Javascript in WebComponents working")'