baselines
baselinejavascript: spec

	spec for: #'common' do: [

		spec 
			package: 'Javascript-Core' with: [
				spec requires: #('Seaside-Core' 'Seaside-Canvas' ) ];
			package: 'Javascript-Tests-Core' with: [
				spec requires: #('Javascript-Core' 'Seaside-Tests-Core' ) ];
			package: 'Seaside-Ajaxifier-Core' with: [
				spec requires: #('Seaside-Core') ];
			package: 'Seaside-Tests-Ajaxifier' with: [
				spec requires: #('Seaside-Ajaxifier-Core' 'Seaside-Tests-Functional') ].
		spec 
			group: 'Javascript' with: #('Javascript-Core');
			group: 'Javascript Tests' with: #('Javascript-Tests-Core' );
			group: 'Ajaxifier' with: #( 'Seaside-Ajaxifier-Core' );
			group: 'Ajaxifier Tests' with: #( 'Seaside-Tests-Ajaxifier' );
			group: 'Tests' with: #( 'Javascript Tests' 'Ajaxifier Tests' ) ].
		
	spec for: #squeak do: [
		spec 
			package: 'Javascript-Squeak-Core' with: [
				spec requires: #('Javascript-Core' 'Seaside-Squeak-Core' ) ].
		spec 
			package: 'Javascript-Tests-Pharo-Core' with: [
				spec requires: #('Javascript-Tests-Core' 'Javascript-Squeak-Core' ) ].
		spec 
			package: 'Javascript-Core' with: [
				spec includes: #('Javascript-Squeak-Core' ) ];
			package: 'Javascript-Tests-Core' with: [
				spec includes: #('Javascript-Tests-Pharo-Core' ) ] ].
		
	spec for: #pharo do: [
		spec 
			package: 'Javascript-Pharo-Core' with: [ spec requires: #('Javascript-Core' 'Seaside-Pharo-Core' ) ];
			package: 'Javascript-Tests-Pharo-Core' with: [ spec requires: #('Javascript-Tests-Core' 'Javascript-Pharo-Core' ) ];
			package: 'Javascript-Core' with: [ spec includes: #('Javascript-Pharo-Core' ) ];
			package: 'Javascript-Tests-Core' with: [ spec includes: #('Javascript-Tests-Pharo-Core' ) ] ].
		
	spec for: #'pharo7.x' do: [		
		spec
			package: 'Javascript-Pharo70-Extensions' with: [ spec requires: #('Javascript-Core' 'Seaside-Pharo-Core' ) ];
			package: 'Javascript-Pharo-Core' with: [ spec includes: #('Javascript-Pharo70-Extensions') ];
			package: 'Javascript-Tests-Pharo70-Extensions' with: [ spec requires: #('Javascript-Tests-Core' 'Javascript-Pharo-Core') ];
			package: 'Javascript-Tests-Pharo-Core' with: [ spec includes: #('Javascript-Tests-Pharo70-Extensions') ] ].
		
  spec
    for: #'gemstone'
    do: [ 
      spec
        package: 'Javascript-Core'
          with: [ spec includes: #('Javascript-GemStone-Core') ];
        package: 'Javascript-GemStone-Core'
          with: [ spec requires: #('Javascript-Core') ] ].