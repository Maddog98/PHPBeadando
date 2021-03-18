<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Varga Balázs</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/mustache.js/2.3.0/mustache.min.js"></script>
        <script src="iranyito.js" type="text/javascript"></script>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <main>
            <header>
                <h1>
                    Adazbázis feldolgozás
                </h1>
                <nav>
            </header>
            <nav>
                <ul>
                    <li id="megjelenit"><a href="#">Megjelenítés</a></li>
                </ul>

            </nav>
            <section>
                <p for="nev">Név:</p>
                <input type="text" id="nev" name="nev">
                <p for="kor">Életkor:</p>
                <input type="number" id="kor" name="kor">
                <p for="neme">Neme:</p>
                <input type="text" id="neme" name="neme">
                <br><br>
                <input type="button" id="szkuld" value="Küld" novalidate>
            </section>

            <section>

            </section>
            <article class="szemelyek">
                <div>

                </div>
            </article>

            <article class="telefonkonyvem">
                <div>

                </div>
            </article>
        </main>
        <?php
        // put your code here
        ?>
    </body>
</html>
