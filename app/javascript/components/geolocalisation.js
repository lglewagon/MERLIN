

function geoFindMe() {
    const status = document.querySelector('#status');
    const mapLink = document.querySelector('#map-link');

    mapLink.href = '';
    mapLink.textContent = '';

    function success(position) {
      const latitude  = position.coords.latitude;
      const longitude = position.coords.longitude;
  
      status.textContent = "✨ c'est noté";

      var inputLatitude = document.getElementById("garden_latitude")
      inputLatitude.value = latitude
      var inputLongitude = document.getElementById("garden_longitude")
      inputLongitude.value = longitude
    }

    function error() {
      status.textContent = 'Unable to retrieve your location';
    }

    if (!navigator.geolocation) {
      status.textContent = 'Ce navigateur ne me permet pas de vous localiser';
    } else {
      status.textContent = "... sort de géolocalisation en cours";
      navigator.geolocation.getCurrentPosition(success, error);
    }
}
  
export {geoFindMe}
  