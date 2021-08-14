

function geoFindMe() {
    const status = document.querySelector('#status');
    const mapLink = document.querySelector('#map-link');

    mapLink.href = '';
    mapLink.textContent = '';

    function success(position) {
      const latitude  = position.coords.latitude;
      const longitude = position.coords.longitude;
  
      status.textContent = 'Nous avons bien pris en compte votre position';

      var inputLatitude = document.getElementById("garden_latitude")
      inputLatitude.value = latitude
      var inputLongitude = document.getElementById("garden_longitude")
      inputLongitude.value = longitude
    }

    function error() {
      status.textContent = 'Unable to retrieve your location';
    }

    if (!navigator.geolocation) {
      status.textContent = 'Geolocation is not supported by your browser';
    } else {
      status.textContent = 'Locating…';
      navigator.geolocation.getCurrentPosition(success, error);
    }
}
  
export {geoFindMe}
  