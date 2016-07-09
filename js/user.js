var user = angular.module('userModule', []); 
    
user.service('userService', function() {
    this.goToPage= function(pageName) {
        window.location.href = pageName; 
    }
});

user.controller('getUserListCtrl',  ['$scope', '$http', 'userService', function ($scope, $http, userService) 
{
    
    loadUsers();
      
    function loadUsers() {
    	$http({method: 'GET', url: '../controllers/UserManagement/usermanagementlist.php'})
 		.success(function(data) {
          $scope.userList = data;
    	});
    }
    
    $(".btnUser").click(function() {
        userService.goToPage("addedituser.php");
        sessionStorage.setItem('manageType', 'Add New');
    });
    
    
}]);

user.controller('addeditUserCtrl',  ['$scope', '$http', 'userService', function ($scope, $http, userService) 
{
   var manageType = sessionStorage.getItem('manageType');
   $(".clsType").html(manageType);
    
    
    $(".btnSave").click(function() {
        if (!validateUser()) {
            alert('Please fill out blank fields.');   
        } else {
        saveUser();
        }
    });
    
    function validateUser() {
    
        var isValid = true;
        
        if ($("#txtUsername").val() == "") {
            $("#txtUsername").css("border","1px solid rgb(255, 77, 77)");
            isValid = false;   
        }
        
        if ($("#txtPassword").val() == "") {
            $("#txtPassword").css("border","1px solid rgb(255, 77, 77)");
            isValid = false;   
        }
        if($('#txtFirstName').val() == "") {
            $("#txtFirstName").css("border","1px solid rgb(255, 77, 77)");
            isValid = false; 
        }
         if($('#txtLastName').val() == "") {
            $("#txtLastName").css("border","1px solid rgb(255, 77, 77)");
            isValid = false; 
        }
         if($('#txtEmail').val() == "") {
            $("#txtEmail").css("border","1px solid rgb(255, 77, 77)");
            isValid = false; 
        }
        
        return isValid;
        
    }
    
      function saveUser() {
        var username =  $("#txtUsername").val();
        var password = $("#txtPassword").val();
        var fname = $("#txtFirstName").val();
        var mname = $("#txtMiddleName").val();
        var lname = $("#txtLastName").val();
        var address = $("#txtAddress").val();
        var contact = $("#txtContactNo").val();
        var email = $("#txtEmail").val();
        var utype = $("#txtUserType option:selected").text(); 
        var isactive = $("#txtIsActive").val();
        if (isactive == 'on')
        {
         isactive = 0;   
        }else{
            isactive = 1;
        }
        var myUrl = '../controllers/saveuser.php';
        
        $http({
            url: myUrl, 
            method: "GET",
            params: { uname: username,pword: password,fname: fname,mname: mname,lname: lname,address: address,contact: contact,email: email,type: utype,isactive: isactive }
        }).success(function(data) {
            $scope.user = data[0];
            
    	});
        
    }
    
}]);