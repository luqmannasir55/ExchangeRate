<?php

require('dbConnection.php');

date_default_timezone_set("Asia/Kuala_Lumpur");

$sAction = '';
if (!empty($_POST['sAction'])) $sAction = $_POST['sAction'];
$sDate = '';
if (!empty($_POST['sDate'])) $sDate = $_POST['sDate'];

if ($sAction == 'getRates') {

    $sResult = 'fail';

    $sql = "SELECT c.code AS currency, r.rate 
            FROM rates r 
            JOIN currencies c ON r.target_currency_id = c.id 
            WHERE r.effective_date = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $sDate);
    $stmt->execute();
    $result = $stmt->get_result();

    $arrRates = [];

    if ($result) {

        while ($row = $result->fetch_assoc()) {

            $iRate = number_format($row['rate'],4,".",",");

            $row['rate'] = $iRate;

            $arrRates[] = $row;
        }

        $sResult = 'success';

    }
    
    echo json_encode(["sResult" => $sResult, "arrRates" => $arrRates]);

} else {

    include('templates/exchangeRate.html');

}
?>