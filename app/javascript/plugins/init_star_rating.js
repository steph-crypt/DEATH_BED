import "jquery-bar-rating";
import "jquery-bar-rating/dist/themes/css-stars.css";

const initStarRating = () => {
  $('#review_satisfaction').barrating({
    theme: 'css-stars ',
  });
};

export { initStarRating };


