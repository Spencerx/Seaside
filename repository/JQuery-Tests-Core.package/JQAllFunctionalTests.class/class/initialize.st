initialization
initialize
	| application |
	application := WAAdmin register: self asApplicationAt: 'javascript/jquery'.
	application preferenceAt: #scriptGeneratorClass put: JQScriptGenerator.
	application 
		addLibrary: JQDeploymentLibrary;
		addLibrary: JQAllFunctionalTestsLibrary