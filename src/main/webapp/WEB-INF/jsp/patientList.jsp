<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>Liste des patients</h1>
    <table border="1">
        <tr>
            <th>Nom</th>
            <th>Prenom</th>
            <th>Age</th>
            <th>Sexe</th>
            <th>Adresse</th>
            <th>Nationalité</th>
            <th>Telephone</th>
        </tr>
        <c:forEach var="patient" items="${patients}">
            <tr>
                <td>${patient.nom}</td>
                <td>${patient.prenom}</td>
                <td>${patient.dateDeNaissance}</td>
                <td>${patient.sexe.libelle}</td>
                <td>${patient.adresse}</td>
                <td>${patient.nationalite}</td>
                <td>${patient.telephone}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>