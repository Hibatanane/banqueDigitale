<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <link rel="stylesheet" href="assets/fontawesome-free-6.1.2-web/css/all.css">
    <title>Erreur</title>
    <style>
        * {
            box-sizing: border-box;
            font-family: Comfartaa;
        }

        body {
            height: 100vh;

        }

        .card {
            box-shadow: 0 3px 6px rgb(0, 14, 53);
            justify-content: center;
        }

        hr {
            font-size: 10px;
        }

        .card .card-text {
            font-size: 20px;
        }
    </style>
</head>

<body class="d-flex align-items-center justify-content-center">
    <div class="card col-4 alert alert-danger border border-danger tex-danger">
        <h3 class="card-title">
            <i class="fa fa-window-close mr-3"></i>Erreurs :
        </h3>
        <hr>
        <div class="card-body">
            <p class="card-text">
                Paragraphe erreurs
            </p>
            <hr>

            <a href="/" class="btn btn-sm btn-danger "><i class="fa fa-arrow-left mr-2">
                </i>Retour</a>
        </div>
    </div>
</body>

</html>