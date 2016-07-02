$(document).ready(function() {
    
    //Global Variables
    var retrievedPassword = '';
    var userName = '';
    
    //GLOBAL----------------------------------------------------------------------------------------
       $('#selectSession').submit(function() {
           if (!$("input[name='session']:checked").val()) {
               alert('Please select session');
               return false;
            }
            else {
               return true;
            }
       });
    
     $('#selectTopic').submit(function() {
           if (!$("input[name='rdtopic']:checked").val()) {
               alert('Please select topic');
               return false;
            }
            else {
               return true;
            }
       });
    
    
    //LOGIN----------------------------------------------------------------------------------------
    $(".lnk-forgotPass").click(function() {
        userName = $("#user_login").val();
        

        if (userName == null || userName == "") {
                $(".warningText").css("display", "block");
                $(".warningText").text("Please provide username");
        } else {

            $.ajax({
                method: 'POST',
                url: '../controllers/validateUser.php',
                data: ({
                    uname: userName
                })
            }).success(function(data) {
                data = JSON.parse(data);
                if (data.length > 0) {
                    retrievedPassword = data[0].password;
                    
                    $("#loginForm").css("display", "none");
                    $("#forgotPasswordForm").css("display", "block");

                    $("#txtUsername").focus();
                    $("#txtUsername").val(userName);
                    $("#txtUsername").prop("disabled", "disabled");
                } else {
                    $(".warningText").css("display", "block");
                    $(".warningText").text("Invalid username");
                }
            });
        }
    });
    
    $(".btnChangePass").click(function() {
        var newPass = $("#txtNewPassword").val();
        var confirmPass = $("#txtConfirmPassword").val();
        
        if (newPass == confirmPass) {
            $.ajax({
                method: 'POST',
                url: '../controllers/userChangePass.php',
                data: { uname: userName, pass: newPass },
            }).success(function(data) {
                console.log(data);
                if (data.trim() == 'Password Update Successfully') {
                    clearFields();
                    alert("Password changed successfully");
                }
            }).error(function(ex) {
                alert(ex.message);  
            });
        } else {
            $(".warningText").css("display", "block");
            $(".warningText").text("Password does not match.");
        }
    });
    
    var clearFields = function() {
        $("#txtUsername").val('');
        $("#txtOldPassword").val('');
        $("#txtConfirmPassword").val('');
        $("#loginForm").css("display", "block");
        $("#forgotPasswordForm").css("display", "none");
        $(".warningText").css("display", "none");
        $("#user_login").val('');
        $("#user_login").focus();
    }
    
    //HEADER----------------------------------------------------------------------------------------
    
    $('ul.dropdown-menu [data-toggle=dropdown]').on('click', function(event) {
			event.preventDefault(); 
			event.stopPropagation(); 
			$(this).parent().siblings().removeClass('open');
			$(this).parent().toggleClass('open');
		});
    
    
    
});