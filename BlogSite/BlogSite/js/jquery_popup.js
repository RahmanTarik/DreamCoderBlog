

$(document).ready(function () {
    setTimeout(popup, 3000);
    function popup() {
        $("#logindiv").css("display", "block");
    }
    $("#signInCancel").click(function () {
        $(this).parent().parent().hide();
        return false;
    });
    $("#signUpCancel").click(function () {
        $(this).parent().parent().hide();
        return false;
    });
    $("#onclickSignIn").click(function () {
        $("#signIn").css("display", "block");
    });

    $("#onclickSignUp").click(function () {
        $("#signUp").css("display", "block");
    });

    // Contact form popup send-button click event.
    $("#signInButton").click(function () {
        var email = $("#email").val();
        var password = $("#password").val();

        if (email == "" || password == "") {
            alert("Please Fill All Fields");
            return false;
        } else {
            function validateEmail(email) {
                var filter = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;
                if (filter.test(email)) {
                    return true;
                } else {
                    return false;
                }
            }
            if (validateEmail(email)) {
                $("#signIn").css("display", "none");
                $(this).parent().parent().hide();
                return true;
            } else {
                alert('Invalid Email Address');
                return false;
            }

        }
    });

    $("#signUpButton").click(function () {
        var email = $("#email").val();
        var password = $("#password").val();
        var lname = $("#lname").val();
        var fname = $("#fname").val();

        if (email == "" || password == "" || lname=="" || fname=="") {
            alert("Please Fill All Fields");
            return false;
        } else {
            function validateEmail(email) {
                var filter = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;
                if (filter.test(email)) {
                    return true;
                } else {
                    return false;
                }
            }
            if (validateEmail(email)) {
                $("#signIn").css("display", "none");
                $(this).parent().parent().hide();
                return true;
            } else {
                alert('Invalid Email Address');
                return false;
            }

        }
    });
    
});

