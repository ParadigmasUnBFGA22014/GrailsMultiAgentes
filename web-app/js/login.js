var Login = function () {

	var handleLogin = function() {

		$('.login-form').validate({
	            errorElement: 'span', //default input error message container
	            errorClass: 'help-block', // default input error message class
	            focusInvalid: false, // do not focus the last invalid input
	            rules: {
	                j_username: {
	                    required: true
	                },
	                j_password: {
	                    required: true
	                }
	            },

	            messages: {
	                j_username: {
	                    required: "O nome do usuário é obrigatório."
	                },
	                j_password: {
	                    required: "A senha é obrigatória."
	                }
	            },

	            invalidHandler: function (event, validator) { //display error alert on form submit   
	                $('.alert-danger', $('.login-form')).show();
	            },

	            highlight: function (element) { // hightlight error inputs
	                $(element)
	                    .closest('.form-group').addClass('has-error'); // set error class to the control group
	            },

	            success: function (label) {
	                label.closest('.form-group').removeClass('has-error');
	                label.remove();
	            },

	            errorPlacement: function (error, element) {
	                error.insertAfter(element.closest('.input-icon'));
	            },

	            submitHandler: function (form) {
	                form.submit(); // form validation success, call ajax form submit
	            }
	        });

	        $('.login-form input').keypress(function (e) {
	            if (e.which == 13) {
	                if ($('.login-form').validate().form()) {
	                    $('.login-form').submit(); //form validation success, call ajax form submit
	                }
	                return false;
	            }
	        });
	}
    
    return {
        //main function to initiate the module
        init: function () {
        	
            handleLogin();     
	       
        }

    };

}();