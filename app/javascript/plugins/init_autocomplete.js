import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('query');
  if (addressInput) {
    places({ container: addressInput });
  }
  const searchInput = document.getElementById('search');
  if (searchInput) {
    places({ container: searchInput });
  }
  const searchInputIndex = document.getElementById('algolia-big');
  if (searchInputIndex) {
    places({ container: searchInputIndex });
  }
};

export { initAutocomplete };
