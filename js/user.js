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
    
    
    $scope.btnEditUser = function(id) {
        userService.goToPage("addedituser.php");
        sessionStorage.setItem('editId', id);
        sessionStorage.setItem('manageType', 'Edit');
    }
    
    $scope.btnDeleteUser = function(id, uname) {
         var myUrl = '../controllers/deleteuser.php';
        
        var r = confirm("Are you sure you want to delete " + uname.toUpperCase() + "?");
        if (r == true) {
            $http({
            url: myUrl, 
            method: "GET",
            params: { userid: id }
        }).success(function(data) {
            if (data.length == 4) {
                $scope.$apply;
                userService.goToPage("usermanagement.php");
            } else {
                alert(data);
            }   
    	});
        } else {
            return false;
        }
        
        
    }
    
}]);

user.controller('addeditUserCtrl',  ['$scope', '$http', 'userService', function ($scope, $http, userService) 
{
   var editId = sessionStorage.getItem('editId');
   sessionStorage.setItem('editId', 0);
   var manageType = sessionStorage.getItem('manageType');
   $(".clsType").html(manageType);
    
    //This is for edit
    if (editId > 0) {
        loadEditUser(editId);
    }
    
    
    $(".btnSave").click(function() {
        if (!validateUser()) {
            alert('Please fill out blank fields.');   
        } else {
            if (editId > 0) {
                updateUser(editId);
            } else {
                saveUser();
            }
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
        var utype = $("select[name='txtUserType']").val(); 
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
            $scope.$apply;
            userService.goToPage("usermanagement.php");
    	});
    }
    
    function updateUser(id) {
        var username =  $("#txtUsername").val();
        var password = $("#txtPassword").val();
        var fname = $("#txtFirstName").val();
        var mname = $("#txtMiddleName").val();
        var lname = $("#txtLastName").val();
        var address = $("#txtAddress").val();
        var contact = $("#txtContactNo").val();
        var email = $("#txtEmail").val();
        var utype = $("select[name='txtUserType']").val(); 
        var isactive = $("#txtIsActive").val();
        if (isactive == 'on')
        {
         isactive = 0;   
        }else{
            isactive = 1;
        }
        var myUrl = '../controllers/updateuser.php';
        
        $http({
            url: myUrl, 
            method: "GET",
            params: { uid: id, uname: username,pword: password,fname: fname,mname: mname,lname: lname,address: address,contact: contact,email: email,type: utype,isactive: isactive }
        }).success(function(data) {
            $scope.$apply;
            userService.goToPage("usermanagement.php");
    	});
    }
    
    function loadEditUser(editId) {
     
        var myUrl = '../controllers/loadedituser.php';
        
        $http({
            url: myUrl, 
            method: "GET",
            params: { id: editId }
        }).success(function(data) {
            $("#txtUsername").val(data[0].username);
            $("#txtUsername").prop("disabled",true);
            $("#txtPassword").val(data[0].password);
            $("#txtFirstName").val(data[0].fname);
            $("#txtMiddleName").val(data[0].mname);
            $("#txtLastName").val(data[0].lname);
            $("#txtAddress").val(data[0].address);
            $("#txtContactNo").val(data[0].contactno);
            $("#txtEmail").val(data[0].emailadd);
            
            $("#txtIsActive").prop("checked", parseInt(data[0].status));
            
            $("select[name='txtUserType']").val(data[0].usertype);
    	});
        
    }
    
    $(".btnCancel").click(function() {
        userService.goToPage("usermanagement.php"); 
    });
    
}]);