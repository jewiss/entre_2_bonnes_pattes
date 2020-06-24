import $ from 'jquery';
import "select2/dist/css/select2.css";
import 'select2';



const initSelect2 = () => {
  console.log("coucou");
  $('.select2').select2({
    placeholder: 'Mon animal',
    width: '100%'
  });
};

export { initSelect2 };
