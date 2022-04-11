<?php $this->titre = "Ticketing"; ?>

<?php foreach ($tickets as $ticket):
    ?>
    <article>
        <header>
            <a href="<?= "index.php?action=ticket&id=" . $ticket['id'] ?>">
                <h1 class="titreTicket"><?= $ticket['titre'] ?></h1>
            </a>
            <time><?= $ticket['date'] ?></time>
        </header>
        <p><?= $ticket['contenu'] ?></p>
        <p>Etat : <?= $ticket['etat'] ?></p>
    </article>
    <hr />
<?php endforeach; ?>
