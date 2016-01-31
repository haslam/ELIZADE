module.exports = function(grunt) {

    // 1. All configuration goes here 
    grunt.initConfig({
        pkg: grunt.file.readJSON('package.json'),

        concat: {
            // 2. Configuration for concatinating files goes here.
			dist: {
        src: [
            'js/*.js', // All JS in the libs folder
            'plugins/isotope/*.js',  // This specific file
			'plugins/*.js',
			'plugins/magnific-popup/*.js',
			'plugins/owl-carousel/*.js'
			
        ],
        dest: 'js/build/production.js',
    }
        },
		
		uglify: {
		build: {
        src: 'js/build/production.js',
        dest: 'js/build/production.min.js'
    }
},
	imagemin: {
    dynamic: {
        files: [{
            expand: true,
            cwd: 'ProductImages/',
            src: ['**/*.{png,jpg,gif}'],
            dest: 'images/build/'
        }]
    }
},
	watch: {
    scripts: {
        files: ['js/*.js','plugins/*.js'],
        tasks: ['concat', 'uglify'],
        options: {
            spawn: false,
        },
    } 
}

    });

    // 3. Where we tell Grunt we plan to use this plug-in.
    grunt.loadNpmTasks('grunt-contrib-concat');
	
	// 5. Uglify for minifying script
	grunt.loadNpmTasks('grunt-contrib-uglify');
	
	// Register grunt-contrib-imagemin for optimizing image
	grunt.loadNpmTasks('grunt-contrib-imagemin');

    // 4. Where we tell Grunt what to do when we type "grunt" into the terminal.
    grunt.registerTask('default', ['concat', 'uglify','imagemin']);
	
	

};