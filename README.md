# ControlTower
vista

@page
@model IndexModel
@{
    ViewData["Title"] = "Home page";
}

<header>
</header>

<body class="body">
    <img src="img/Logo.png" />
    <form method="post">
        <div class="letras">
            <br />
            <br />

            <div class="text-center mb-2">
                <h2>Acceso</h2>
            </div>

            <div class="form-group row letrasCabecera mb-2">
                <label class="col-sm-4 col-form-label">User</label>
                <div class="col-sm-4">
                    <input class="form-control" id="inputUser" name="CodEmpleado" placeholder="User Name" maxlength="7" required>
                </div>
            </div>

            <div class="form-group row letrasCabecera">
                <label class="col-sm-4 col-form-label">Password</label>
                <div class="col-sm-4">
                    <input type="password" class="form-control" id="inputPwd" name="ClaveEmpleado" placeholder="Password" maxlength="16" required>
                </div>
            </div>

            <br />
            <div class="form-group row letrasCabecera">
                <label class="col-sm-4 col-form-label"></label>
                <div class="col-sm-4 align-content-center mx-7 px-3">
                    <button type="submit" class="button" asp-page-handler="Submit">Log in</button>
                </div>
            </div>

        </div>
    </form>

    
</body>

<style>
    .button {
        border-color: #5dc1b9;
        color: #5dc1b9;
        background-color: #ffffff;
        align-items: center;
        width: 40%;
        height: 90%;
        border-radius: 15px;
        border-style: double;
    }

    .div {
        background-color: #5ccb5f;
    }

    .letrasCabecera {
        color: #ffffff;
    }

    .letras {
        color: #090909;
    }

    .mensajesInfo {
        color: #090909;
        background-color: #fed353;
    }

    .body {
        background-color: #ffffff;
    }

    .fondoCabecera {
        background-color: #5ccb5f;
    }
</style>
