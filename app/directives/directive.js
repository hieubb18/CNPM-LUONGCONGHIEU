 
   
app.filter('roundMe',function(){
    
    return function(value) {
          var exp = 2;
           if (typeof exp === 'undefined' || +exp === 0)
           return Math.round(value);

         value = +value;
         exp = +exp;

         if (isNaN(value) || !(typeof exp === 'number' && exp % 1 === 0))
           return NaN;

         // Shift
         value = value.toString().split('e');
         value = Math.round(+(value[0] + 'e' + (value[1] ? (+value[1] + exp) : exp)));

         // Shift back
         value = value.toString().split('e');
         return +(value[0] + 'e' + (value[1] ? (+value[1] - exp) : -exp));
    }
    
});

app.directive('numbersOnly', function () {
    return {
        require: 'ngModel',
        link: function (scope, element, attr, ngModelCtrl) {
            function fromUser(text) {
                if (text) {
                    var transformedInput = text.replace(/[^0-9-]/g, '');
                    if (transformedInput !== text) {
                        ngModelCtrl.$setViewValue(transformedInput);
                        ngModelCtrl.$render();
                    }
                    return transformedInput;
                }
                return undefined;
            }
            ngModelCtrl.$parsers.push(fromUser);
        }
    };
});

app.filter('numToWords',function(){
    return function(amount) {
       var words = new Array();
       words[0] = '';
       words[1] = 'Một';
       words[2] = 'Hai';
       words[3] = 'Ba';
       words[4] = 'Bốn';
       words[5] = 'Năm';
       words[6] = 'Sáu';
       words[7] = 'Bảy';
       words[8] = 'Tám';
       words[9] = 'Chín';
       words[10] = 'Mười';
       words[11] = 'Mười một';
       words[12] = 'Mười hai';
       words[13] = 'Mười ba';
       words[14] = 'Mười bốn';
       words[15] = 'Mười lăm';
       words[16] = 'Mười sáu';
       words[17] = 'Mười bảy';
       words[18] = 'Mười tám';
       words[19] = 'Mười chín';
       words[20] = 'Hai mươi';
       words[30] = 'Ba mươi';
       words[40] = 'Bốn mươi';
       words[50] = 'Năm mươi';
       words[60] = 'Sáu mươi';
       words[70] = 'Bảy mươi';
       words[80] = 'Tám mươi';
       words[90] = 'Chín mươi';
       amount = amount.toString();
       var atemp = amount.split(".");
        
      /* var decimal = atemp[1];
       var decimal = decimal.toFixed(2);
        var nlen = decimal.length;
        if(nlen>0){
            words_string += "AND  ";
        }*/
           
       var number = atemp[0].split(",").join("");
       var n_length = number.length;
       var words_string = "";
        
       if (n_length <= 9) {
           var n_array = new Array(0, 0, 0, 0, 0, 0, 0, 0, 0);
           var received_n_array = new Array();
           for (var i = 0; i < n_length; i++) {
               received_n_array[i] = number.substr(i, 1);
           }
           for (var i = 9 - n_length, j = 0; i < 9; i++, j++) {
               n_array[i] = received_n_array[j];
           }
           for (var i = 0, j = 1; i < 9; i++, j++) {
               if (i == 0 || i == 2 || i == 4 || i == 7) {
                   if (n_array[i] == 1) {
                       n_array[j] = 10 + parseInt(n_array[j]);
                       n_array[i] = 0;
                   }
               }
           }
           value = "";
           for (var i = 0; i < 9; i++) {
               if (i == 0 || i == 2 || i == 4 || i == 7) {
                   value = n_array[i] * 10;
               } else {
                   value = n_array[i];
               }
               if (value != 0) {
                   words_string += words[value] + " ";
               }
               if ((i == 1 && value != 0) || (i == 0 && value != 0 && n_array[i + 1] == 0)) {
                   words_string += "chục ";
               }
               if ((i == 3 && value != 0) || (i == 2 && value != 0 && n_array[i + 1] == 0)) {
                   words_string += "trăm ";
               }
               if ((i == 5 && value != 0) || (i == 4 && value != 0 && n_array[i + 1] == 0)) {
                   words_string += "nghìn ";
               }
               if (i == 6 && value != 0 && (n_array[i + 1] != 0 && n_array[i + 2] != 0)) {
                   words_string += "trăm nghìn ";
               } else if (i == 6 && value != 0) {
                   words_string += "trăm ";
               }
           }
           words_string = words_string.split("  ").join(" ");
       }
       return words_string;
    }
});
   