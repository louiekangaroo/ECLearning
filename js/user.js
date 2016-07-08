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
        
        return isValid;
        
    }
    
}]);