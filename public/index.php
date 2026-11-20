<?php
require_once __DIR__ . '/../config.php';

$rows = $pdo->query("SELECT id, nume, email FROM utilizatori")->fetchAll(PDO::FETCH_ASSOC);

echo "<h2>Conexiune reușită din public/index.php!</h2><ul>";
foreach ($rows as $row) {
    echo "<li>#{$row['id']} — " . htmlspecialchars($row['nume']) . " (" . htmlspecialchars($row['email']) . ")</li>";
}
echo "</ul>";