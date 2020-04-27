
const activeClass = () => {
$(document).ready(function(){
  $(".specie_choice").click(function(){
    $(".specie_choice").removeClass("active");
    $(this).addClass("active");
  });
});
};

export { activeClass };
