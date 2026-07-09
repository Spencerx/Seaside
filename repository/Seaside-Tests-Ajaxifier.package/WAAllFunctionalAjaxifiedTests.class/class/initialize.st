initialization
initialize
	| application |
	application := WAAdmin register: self asApplicationAt: 'tests/functional-ajaxified'.
	application
		addLibrary: WAAjaxifierLibrary