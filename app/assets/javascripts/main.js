$(document).on("turbolinks:load", function() {
  $('a[href*="#"]')
    .not('[href="#"]')
    .not('[href="#0"]')
    .click(function(event) {
      event.preventDefault();
      event.stopPropagation();
      // On-page links
      if (
        location.pathname.replace(/^\//, "") ==
          this.pathname.replace(/^\//, "") &&
        location.hostname == this.hostname
      ) {
        // Figure out element to scroll to
        var target = $(this.hash);
        target = target.length
          ? target
          : $("[name=" + this.hash.slice(1) + "]");
        // Does a scroll target exist?
        if (target.length) {
          // Only prevent default if animation is actually gonna happen
          // event.preventDefault();
          $("html, body").animate(
            {
              scrollTop: target.offset().top - 80
            },
            1000
          );
        }
      }
    });
});

// $("#1").click(function() {
//   $([document.documentElement, document.body]).animate(
//     {
//       scrollTop: $("#about").offset().top - 80
//     },
//     1000
//   );
// });
// $("#2").click(function() {
//   $([document.documentElement, document.body]).animate(
//     {
//       scrollTop: $("#education").offset().top - 80
//     },
//     1000
//   );
// });
// $("#3").click(function() {
//   $([document.documentElement, document.body]).animate(
//     {
//       scrollTop: $("#taining").offset().top - 80
//     },
//     1000
//   );
// });
// $("#4").click(function() {
//   $([document.documentElement, document.body]).animate(
//     {
//       scrollTop: $("#projects").offset().top - 80
//     },
//     1000
//   );
// });
// $("#5").click(function() {
//   $([document.documentElement, document.body]).animate(
//     {
//       scrollTop: $("#skills").offset().top - 80
//     },
//     1000
//   );
// });
// $("#6").click(function() {
//   $([document.documentElement, document.body]).animate(
//     {
//       scrollTop: $("#contact").offset().top - 80
//     },
//     1000
//   );
// });
