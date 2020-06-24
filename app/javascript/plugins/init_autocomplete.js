import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('user_address');
  if (addressInput) {
    places({ container: addressInput });
  }

  const cityInput = document.getElementById('user_city');
  if (cityInput) {
    places({ container: cityInput,templates: {
      value: function(suggestion) {
        return suggestion.name;
      }
    }
     }).configure({
    type: 'city',
    aroundLatLngViaIP: false,
  });
  }
};

export { initAutocomplete };
