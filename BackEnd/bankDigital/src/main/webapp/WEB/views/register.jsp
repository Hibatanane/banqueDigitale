<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/main.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <link rel="stylesheet" href="assets/fontawesome-free-6.1.2-web/css/all.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
    <title>Inscription</title>
</head>

<body class="d-flex align-items-center justify-content-center body2">
    <div class="card card-reg registration-form-card col-6 bg-transparent border-2">
        <div class="card-body ">
            <h2 class="form-header card-title mb-4 ">
                <i class="fa fa-edit"> Formulaire d'inscription</i>
            </h2>
            <form:form action="/inscription" class="reg-form" modelAttribute="registerUser">
                <div class="row">
                    <div class="form-group col">
                        <form:input type="text" path="first_name" class="form-control form-control-lg"
                            placeholder="Entrer votre prénom">
                            <form:errors path="first_name" class="text-white bg-danger"/>
                    </div>
                    <div class="form-group col">
                        <form:input type="text" path="last_name" class="form-control form-control-lg"
                            placeholder="Entrer votre nom">
                            <form:errors path="last_name" class="text-white bg-danger"/>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col">
                        <form:input type="email" path="email" class="form-control form-control-lg"
                            placeholder="Entrer votre mail">
                           <form:errors path="email" class="text-white bg-danger"/>

                    </div>
                </div>
                <div class="row">
                    <div class="form-group col">
                        <form:input type="password" path="password" class="form-control form-control-lg"
                            placeholder="Entrer votre mot de passe">
                            <form:errors path="password" class="text-white bg-danger"/>
                    </div>
                    <div class="form-group col">
                        <input type="password" name="confirm_password" class="form-control form-control-lg"
                            placeholder="Confirmer votre mot de passe">
                            <small class="text-white bg-danger">${confirm_pass}</small>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col">
                        <button class="btn btn-md">S'inscrire</button>
                    </div>
                </div>
            </form:form>
            <p class="card-text text-dark my-2 ">Vous avez déja un compte ?
                <span><a href="/connexion" class="ms-2 text-warning">Connectez-vous</a></span>
            </p>
            <small style="font-size: 15px;" class="text-dark bg-warning">
                <i class="bi bi-arrow-bar-left"></i><a href="/" class="btn btn-sm text-dark">Retour</a>
            </small>
        </div>
    </div>
</body>

</html>