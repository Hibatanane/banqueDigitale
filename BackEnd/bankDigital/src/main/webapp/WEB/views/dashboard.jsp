<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="assets/css/app.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
  <link rel="stylesheet" href="assets/fontawesome-free-6.1.2-web/css/all.css">
  <title>Tableau de bord</title>
</head>

<body>
  <!-- Navbar Start  -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="tableauBord.html"><i style="font-size: 20px;"
        class="fa-solid fa-sack-dollar text-primary"></i>Banque Digitale</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
      aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
          <a class="nav-link" href="tableauBord.html">Accueil <span class="sr-only">(current)</span></a>
        </li>s
        <li class="nav-item">
          <a class="nav-link" href="#">Paiement</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Transaction</a>
        </li>
      </ul>
      <a href="index.html" class="btn btn-sm text-white ms-2">
        <i class="fas fa-sign-out" aria-hidden="true"></i>Se déconnecter
      </a>
    </div>
  </nav>
  <!-- Navbar End -->

  <!-- Start Container : Buttons -->
  <div class="container d-flex">
    <!-- Buttons : Accounts/transactions start-->
    <button id="add-account-btn" class="btn btn-lg shadow" type="button" data-bs-toggle="offcanvas"
      data-bs-target="#offcanvasExample1" aria-controls="offcanvasExample">
      <i class="fa-solid fa-id-card"></i> Ajouter un compte
    </button>
    <button id="transact-btn" class="btn btn-lg ms-auto shadow" type="button" data-bs-toggle="offcanvas"
      data-bs-target="#offcanvasExample2" aria-controls="offcanvasExample">
      <i class="fa-solid fa-wallet"></i> Effectuer une opération
    </button>
    <!-- Buttons : Accounts/transactions end-->
  </div>
  <!-- End Container : Buttons -->

  <!--    OFFCANVAS       -->
  <!-- Add Account start -->
  <div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasExample1" aria-labelledby="offcanvasExampleLabel">
    <div class="offcanvas-header">
      <h5 class="offcanvas-title text-dark" id="offcanvasExampleLabel">Ajouter un compte</h5>
      <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
      <div class="card">
        <div class="card-body">
          <form action="" class="add-account-form">
            <!-- Form Group-->
            <div class="form-group">
              <label for=""> Nom du compte :</label>
              <input type="text" name="account_name" class="form-control" placeholder="Entrer le nom du compte">
            </div>
            <!-- End Form Group-->
            <!-- Form Group-->
            <div class="form-group">
              <label for=""> Type du compte :</label>
              <select name="account_type" class="form-control my-3" id="">
                <option value=""> -- Selectionner le type du compte -- </option>
                <option value="check">Compte courant</option>
                <option value="saving">Compte d'épargne</option>
                <option value="business">Compte professionnel</option>
              </select>
            </div>
            <!-- End Form Group-->
            <!--Form Group -->
            <div class="form-group mb-2">
              <button id="" class="btn btn-md transact-btn">Ajouter</button>
            </div>
            <!-- End Form Group -->
          </form>
        </div>
      </div>
    </div>
  </div>
  <!--Add Account end -->

  <!-- Add Transaction start -->
  <div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasExample2" aria-labelledby="offcanvasExampleLabel">
    <div class="offcanvas-header">
      <h5 class="offcanvas-title" id="offcanvasExampleLabel">Menu des opérations</h5>
      <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <!-- Offcanvas :corps opération -->
    <div class="offcanvas-body">
      <small class="card-text text-dark">
        Choisissez une option pour effectuer une opération
      </small>
      <!-- List of operations-->
      <select name="transact-type" class="form-control my-3" id="transact-type">
        <option value="">-- Choisir le type d'opération --</option>
        <option value="payment">Paiement</option>
        <option value="transfer">Virement</option>
        <option value="deposit">Versement</option>
        <option value="withdraw">Withdraw</option>
      </select>
      <!-- End List of operations -->

      <!-- Paiement -->
      <div class="card payment-card" style="display: none;">
        <div class="card-body">
          <!--Form Group -->
          <div class="form-group mb-2">
            <label for="">Bénéficiaire : </label>
            <input type="text" name="beneficiary" class="form-control"
              placeholder="Entrer le nom de votre bénéficiaire">
          </div>
          <!-- End Form Group -->

          <!--Form Group -->
          <div class="form-group mb-2">
            <label for="">Numéro du compte : </label>
            <input type="text" name="account_number" class="form-control" placeholder="Entrer le numéro du compte">
          </div>
          <!-- End Form Group -->
          <!--Form Group -->
          <div class="form-group mb-2">
            <label for="">Sélectionner le compte : </label>
            <select name="account_id" class="form-control" id="">
              <option value="">-- Sélectionner le compte : </option>
            </select>
          </div>
          <!-- End Form Group -->

          <!--Form Group -->
          <div class="form-group mb-2">
            <label for="">Réference : </label>
            <input type="text" name="reference" class="form-control" placeholder="Entrer la réference">
          </div>
          <!-- End Form Group -->

          <!--Form Group -->
          <div class="form-group mb-2">
            <label for=""> Montant : </label>
            <input type="text" name="payment_amount" class="form-control" placeholder="Entrer le montant">
          </div>
          <!-- End Form Group -->

          <!--Form Group -->
          <div class="form-group mb-2">
            <button id="" class="btn btn-md transact-btn">Valider </button>
          </div>
          <!-- End Form Group -->
        </div>
      </div>
      <!-- End of Paiement -->

      <!-- Start Transfer -->
      <div class="card transfer-card" style="display: none;">
        <div class="card-body">
          <!--Form Group -->
          <div class="form-group mb-2">
            <label for="">Sélectionner le compte : </label>
            <select name="account_id" class="form-control" id="">
              <option value="">-- Sélectionner le compte : </option>
            </select>
          </div>
          <!-- End Form Group -->
          <!--Form Group -->
          <div class="form-group mb-2">
            <label for="">Sélectionner le compte : </label>
            <select name="account_id" class="form-control" id="">
              <option value="">-- Sélectionner le compte : </option>
            </select>
          </div>
          <!-- End Form Group -->
          <!--Form Group -->
          <div class="form-group mb-2">
            <label for=""> Montant à transférer : </label>
            <input type="text" name="transfer_amount" class="form-control" placeholder="Entrer le montant">
          </div>
          <!-- End Form Group -->
          <!--Form Group -->
          <div class="form-group mb-2">
            <button id="" class="btn btn-md transact-btn">Transférer</button>
          </div>
          <!-- End Form Group -->
        </div>
      </div>
      <!-- End Transfer-->


      <!-- Start Deposit -->
      <div class="card deposit-card" style="display: none;">
        <div class="card-body">
          <form action="" class="deposit-form">
            <!--Form Group -->
            <div class="form-group mb-2">
              <label for=""> Montant à déposer : </label>
              <input type="text" name="deposit_amount" class="form-control" placeholder="Entrer le montant à déposer">
            </div>
            <!-- End Form Group -->
            <!--Form Group -->
            <div class="form-group mb-2">
              <label for="">Sélectionner le compte : </label>
              <select name="account_id" class="form-control" id="">
                <option value="">-- Sélectionner le compte : </option>
              </select>
            </div>
            <!-- End Form Group -->
            <!--Form Group -->
            <div class="form-group my-2">
              <button id="" class="btn btn-md transact-btn">Déposer</button>
            </div>
            <!-- End Form Group -->
          </form>
        </div>
      </div>
      <!-- End Deposit-->

      <!-- Start Withdraw -->
      <div class="card withdraw-card" style="display: none;">
        <div class="card-body">
          <form action="" class="deposit-form">
            <!--Form Group -->
            <div class="form-group mb-2">
              <label for=""> Montant à Withdraw : </label>
              <input type="text" name="withdraw_amount" class="form-control" placeholder="Entrer le montant à withdraw">
            </div>
            <!-- End Form Group -->
            <!--Form Group -->
            <div class="form-group mb-2">
              <label for="">Sélectionner le compte : </label>
              <select name="account_id" class="form-control" id="">
                <option value="">-- Sélectionner le compte : </option>
              </select>
            </div>
            <!-- End Form Group -->
            <!--Form Group -->
            <div class="form-group my-2">
              <button id="" class="btn btn-md transact-btn">Withdraw</button>
            </div>
            <!-- End Form Group -->
          </form>
        </div>
      </div>
      <!-- End Withdraw-->


    </div>
  </div>
  <!-- Add Transaction end -->
  <!-- Container : Totale balance-->
  <div class="container d-flex py-3">
    <h2 class="me-auto">Solde : </h2>
    <h2 class="ms-auto">0.00</h2>
  </div>
  <!--End of container : totale balance-->
  <div class="container">
    <!-- Start of Accordion-->
    <div class="accordion accordion-flush" id="accordionFlushExample">
      <div class="accordion-item">
        <h2 class="accordion-header" id="flush-headingOne">
          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
            data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
            Accordion Item #1
          </button>
        </h2>
        <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne"
          data-bs-parent="#accordionFlushExample">
          <div class="accordion-body">Placeholder content for this accordion, which is intended to demonstrate the
            <code>.accordion-flush</code> class. This is the first item's accordion body.
          </div>
        </div>
      </div>
      <div class="accordion-item">
        <h2 class="accordion-header" id="flush-headingTwo">
          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
            data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
            Accordion Item #2
          </button>
        </h2>
        <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo"
          data-bs-parent="#accordionFlushExample">
          <div class="accordion-body">Placeholder content for this accordion, which is intended to demonstrate the
            <code>.accordion-flush</code> class. This is the second item's accordion body. Let's imagine this being
            filled with some actual content.
          </div>
        </div>
      </div>
      <div class="accordion-item">
        <h2 class="accordion-header" id="flush-headingThree">
          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
            data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
            Accordion Item #3
          </button>
        </h2>
        <div id="flush-collapseThree" class="accordion-collapse collapse" aria-labelledby="flush-headingThree"
          data-bs-parent="#accordionFlushExample">
          <div class="accordion-body">Placeholder content for this accordion, which is intended to demonstrate the
            <code>.accordion-flush</code> class. This is the third item's accordion body. Nothing more exciting
            happening here in terms of content, but just filling up the space to make it look, at least at first glance,
            a bit more representative of how this would look in a real-world application.
          </div>
        </div>
      </div>
    </div>
    <!-- End of Accordion-->
  </div>
  <!-- End of container : Acordion -->
  <div class="container">
    <div class="card no-accounts-card">
      <div class="card-body">
        <h2 class="card-title">
          <i class="fa-solid fa-user-slash text-danger me-3"></i>Pas de résultats
        </h2>
        <div class="card-text">
          Aucun compte n'a été retrouvé.
          <br>
          Pour ajouter un compte, cliquer sur le bouton en dessus.
        </div>
      </div>
    </div>
  </div>
  <!-- Container : No accounts -->
  <script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI="
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js"
    integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js"
    integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK"
    crossorigin="anonymous"></script>
  <script src="/assets/js/main.js"></script>
</body>

</html>