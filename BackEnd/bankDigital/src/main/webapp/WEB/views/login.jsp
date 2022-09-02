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
    <title>Connexion</title>
</head>

<body class="d-flex align-items-center justify-content-center body3">
    <div class="card card-login login-form-card col-4 bg-transparent border-2">
        <div class="card-body ">
            <h2 class="form-header card-title mb-4 ">
                <i class="fa fa-user-circle"> Se connecter</i>
            </h2>
            <form action="" class="login-form">
                <div class="row">
                    <div class="form-group col">
                        <input type="email" name="email" class="form-control form-control-lg"
                            placeholder="Entrer votre mail">
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col">
                        <input type="password" name="password" class="form-control form-control-lg"
                            placeholder="Entrer votre mot de passe">
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col">
                        <button class="btn btn-md">Se connecter</button>
                    </div>
                </div>
            </form>
            <p class="card-text text-dark my-2 ">Vous n'avez pas de compte ?
                <span><a href="/inscription" class="ms-2 text-warning">Inscrivez-vous</a></span>
            </p>
            <small style="font-size: ' 15px;" class="text-dark bg-warning">
                <i class="bi bi-arrow-bar-left"></i><a href="/" class="btn btn-sm text-dark">Retour</a>
            </small>
        </div>
    </div>
</body>

</html>