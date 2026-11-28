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
    <h1>Formulaire de modification patient</h1>
    <form action="${pageContext.request.contextPath}/registerEdit" method="post">
        <input type="hidden" name="id" value="${patient.id}">
        <label for="nom">Nom:</label>
        <input type="text" id="nom" name="nom" value="${patient.nom}" required><br><br>
        <label for="prenom">Prenom:</label>
        <input type="text" id="prenom" name="prenom" value="${patient.prenom}" required><br><br>
        <label for="dateDeNaissance">Date de naissance:</label>
        <input type="date" id="dateDeNaissance" name="dateDeNaissance" value="${patient.dateDeNaissance}" required><br><br>
        <label for="lieuDeNaissance">Lieu de naissance:</label>
        <input type="text" id="lieuDeNaissance" name="lieuDeNaissance" value="${patient.lieuDeNaissance}" required><br><br>
        <label for="idSexe">Sexe:</label>
        <select id="idSexe" name="patient.sexe.id" required>
            <option value="">Sélectionnez un sexe</option>
            <c:forEach var="s" items="${sexe}">
                <option value="${s.id}" ${patient.sexe != null && patient.sexe.id == s.id ? 'selected' : ''}>${s.libelle}</option>
            </c:forEach>
        </select><br><br>
        <label for="nationalite">Nationalité:</label>
        <input type="text" id="nationalite" name="nationalite" value="${patient.nationalite}" required><br><br>
        <label for="telephone">Téléphone:</label>
        <input type="text" id="telephone" name="telephone" value="${patient.telephone}" required><br><br>
         <label for="adresse">Adresse:</label>
        <input type="text" id="adresse" name="adresse" value="${patient.adresse}" required><br><br>

        <input type="submit" value="Enregistrer">
    </form>
    <%
    String msg = request.getParameter("message");
    String err = request.getParameter("erreur");
    if (msg != null && !msg.isEmpty()) { %>
        <p style="color: green;"><%= msg %></p>
    <% }
    if (err != null && !err.isEmpty()) { %>
        <p style="color: red;"><%= err %></p>
     <% } %>

</body>
</html>