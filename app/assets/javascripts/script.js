document.addEventListener("turbolinks:load", function() {

  var flashcard = document.querySelector( '.flashcard' );

  var flashcardFront = flashcard.querySelector( '.flashcard-front' ),
      flashcardBack = flashcard.querySelector( '.flashcard-back' );

  flashcardFront.addEventListener( 'click', function( event ) {
    var mx = event.clientX - flashcard.offsetLeft,
      my = event.clientY - flashcard.offsetTop;

    var w = flashcard.offsetWidth,
      h = flashcard.offsetHeight;

    var directions = [
      { id: 'top', x: w/2, y: 0 },
      { id: 'right', x: w, y: h/2 },
      { id: 'bottom', x: w/2, y: h },
      { id: 'left', x: 0, y: h/2 }
    ];

    directions.sort( function( a, b ) {
      return distance( mx, my, a.x, a.y ) - distance( mx, my, b.x, b.y );
    } );

    flashcard.setAttribute( 'data-direction', directions.shift().id );
    flashcard.classList.add( 'is-open' );
  } );

  flashcardBack.addEventListener( 'click', function( event ) {
    flashcard.classList.remove( 'is-open' );
  } );

  function distance( x1, y1, x2, y2 ) {
    var dx = x1-x2;
    var dy = y1-y2;
    return Math.sqrt( dx*dx + dy*dy );
  }

});