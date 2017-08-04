/* Exports a function which returns an object that overrides the default &
 *   plugin file patterns (used widely through the app configuration)
 *
 * To see the default definitions for Lineman's file paths and globs, see:
 *
 *   - https://github.com/linemanjs/lineman/blob/master/config/files.coffee
 */
module.exports = function(lineman) {
  //Override file patterns here
  return {
    js: {
      vendor: [
        "vendor/js/angular.js",
        "vendor/js/**/*.js",
        "vendor/bower/ngstorage/ngStorage.min.js",
        "vendor/bower/jquery/dist/jquery.min.js",
        "vendor/bower/bootstrap/dist/js/bootstrap.min.js",
      ],
      app: [
        "app/js/app.js",
        "app/js/**/*.js"
      ]
    },

    less: {
      compile: {
        options: {
          paths: ["vendor/css/normalize.css",
                  "vendor/css/**/*.css",
                  "app/css/**/*.less",

                ]
        }
      }
    },

    css:{
      vendor: [
        "vendor/bower/bootstrap/dist/css/bootstrap.css",
        //"vendor/bower/bootstrap/dist/css/bootstrap-theme.css",
      ],
    },

    webfonts:{
      vendor: [
        "vendor/bower/bootstrap/dist/fonts/glyphicons-halflings-regular.eot",
        "vendor/bower/bootstrap/dist/fonts/glyphicons-halflings-regular.svg",
        "vendor/bower/bootstrap/dist/fonts/glyphicons-halflings-regular.ttf",
        "vendor/bower/bootstrap/dist/fonts/glyphicons-halflings-regular.woff",
        "vendor/bower/bootstrap/dist/fonts/glyphicons-halflings-regular.woff2"
      ],
      root: "fonts/*.*"

    }
  };
};
