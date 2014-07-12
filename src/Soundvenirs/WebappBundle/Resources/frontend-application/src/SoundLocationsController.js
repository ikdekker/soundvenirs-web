/**
 * Controller for the SoundLocations screen
 *
 * @see services
 */
angular.module('soundvenirsWebapp')
    .controller('SoundLocationsController', function ($scope, SoundLocationsService) {
        SoundLocationsService.getAll().then(function(soundLocations) {
            $scope.soundLocations = soundLocations;
        });
    });