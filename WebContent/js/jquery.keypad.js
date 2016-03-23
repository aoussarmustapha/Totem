;(function($) {
    (function(pluginName) {
        var defaults = {
        inputField: 'input.keypad',
        buttonTemplate: '<button></button>',
        submitButtonText: 'ok',
        deleteButtonText: 'del',
        submitButtonClass: 'submit',
        deleteButtonClass: 'delete'
    };
        $.fn[pluginName] = function(options) {
            options = $.extend(true, {}, defaults, options);

            return this.each(function() {
                var elem = this,
                $elem = $(elem),
                $input = jQuery.type(options.inputField) == 'string' ? $(options.inputField) : options.inputField,
                $form = $input.parents('form').length ? $($input.parents('form')[0]) : $elem;

//                var numbers = Array.apply(null, Array(9)).map(function (_, i) {
//                    return $(options.buttonTemplate).html(i+1).addClass('number');
//                });
                var numbers = new Array();
                numbers.push($(options.buttonTemplate).html("7").addClass('number'));
                numbers.push($(options.buttonTemplate).html("8").addClass('number'));
                numbers.push($(options.buttonTemplate).html("9").addClass('number'));
                numbers.push($(options.buttonTemplate).html("4").addClass('number'));
                numbers.push($(options.buttonTemplate).html("5").addClass('number'));
                numbers.push($(options.buttonTemplate).html("6").addClass('number'));
                numbers.push($(options.buttonTemplate).html("1").addClass('number'));
                numbers.push($(options.buttonTemplate).html("2").addClass('number'));
                numbers.push($(options.buttonTemplate).html("3").addClass('number'));
                numbers.push($(options.buttonTemplate).html(options.deleteButtonText).addClass(options.deleteButtonClass));
                numbers.push($(options.buttonTemplate).html("0").addClass('number'));
                numbers.push($(options.buttonTemplate).html(options.submitButtonText).addClass(options.submitButtonClass));
                $elem.html(numbers).addClass('keypad');

                $elem.find('.number').click(function(e) {
                    $input.val($input.val() + $(e.target).text());
                    $input.trigger('change');
                    e.preventDefault();
                });
                $elem.find('.' + options.deleteButtonClass).click(function(e) {
                    $input.val($input.val().slice(0, -1));
                    $input.trigger('change');
                    e.preventDefault();
                });
                $elem.find('.' + options.submitButtonClass).click(function(e) {
                    //$form.submit();
                    $("#pinForm").submit();
                });
            });
        };
        $.fn[pluginName].defaults = defaults;
    })('keypad');
})(jQuery);