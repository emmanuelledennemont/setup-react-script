#!/bin/bash

# Demande à l'utilisateur le nom du projet
read -p "Veuillez entrer le nom du projet : " project_name

# Crée le projet React avec Yarn
echo "Création du projet avec Yarn : $project_name"
yarn create react-app "$project_name"

# Se déplace dans le répertoire du projet
cd "$project_name"

# Supprime les fichiers spécifiés
rm -rf src/logo.svg
rm -rf src/App.test.js
rm -rf src/setupTests.js
rm -rf src/reportWebVitals.js

# Remplace le contenu de src/App.js
echo 'import React from "react";
import "./App.css";

function App() {
  return (
    <div>
      <h1>Welcome to your React 🚀 app!👋 </h1>
    </div>
  );
}

export default App;' > src/App.js

# Modifie le contenu de src/App.css
echo 'h1 {
  display: flex;
  justify-content: center;
  align-items: center;
  margin-top: 8rem;
  font-size: 3rem;
  text-decoration: underline;
  color: #222222;
}' > src/App.css

# Met à jour le contenu de src/index.css
echo '/* http://meyerweb.com/eric/tools/css/reset/
   v2.0 | 20110126
   License: none (public domain)
*/

html,
body,
div,
span,
applet,
object,
iframe,
h1,
h2,
h3,
h4,
h5,
h6,
p,
blockquote,
pre,
a,
abbr,
acronym,
address,
big,
cite,
code,
del,
dfn,
em,
img,
ins,
kbd,
q,
s,
samp,
small,
strike,
strong,
sub,
sup,
tt,
var,
b,
u,
i,
center,
dl,
dt,
dd,
ol,
ul,
li,
fieldset,
form,
label,
legend,
table,
caption,
tbody,
tfoot,
thead,
tr,
th,
td,
article,
aside,
canvas,
details,
embed,
figure,
figcaption,
footer,
header,
hgroup,
menu,
nav,
output,
ruby,
section,
summary,
time,
mark,
audio,
video {
  margin: 0;
  padding: 0;
  border: 0;
  font-size: 100%;
  font: inherit;
  vertical-align: baseline;
}
/* HTML5 display-role reset for older browsers */
article,
aside,
details,
figcaption,
figure,
footer,
header,
hgroup,
menu,
nav,
section {
  display: block;
}
body {
  line-height: 1;
}
ol,
ul {
  list-style: none;
}
blockquote,
q {
  quotes: none;
}
blockquote:before,
blockquote:after,
q:before,
q:after {
  content: "";
  content: none;
}
table {
  border-collapse: collapse;
  border-spacing: 0;
}' > src/index.css

# Supprime l'import et l'utilisation de reportWebVitals dans index.js
echo 'import React from "react";
import ReactDOM from "react-dom/client";
import "./index.css";
import App from "./App";

const root = ReactDOM.createRoot(document.getElementById("root"));
root.render(
  <React.StrictMode>
    <App />
  </React.StrictMode>
);' > src/index.js

# Écrase le contenu du fichier README.md
echo "# $project_name

Ce projet est un starter kit pour développer des applications React.

## Comment lancer le projet

1. Clonez ce dépôt et accédez au répertoire du projet :

   \`\`\`bash
   git clone <URL_DU_REPOT>
   cd $project_name
   \`\`\`

2. Installez les dépendances avec Yarn :

   \`\`\`bash
   yarn install
   \`\`\`

3. Lancez le projet en mode développement :

   \`\`\`bash
   yarn start
   \`\`\`" >  README.md

# Message de fin 
echo "Le projet a été créé avec succès. Bon développement! 🌈🎉😊"

# Ouvre le projet dans Visual Studio Code
code .

# Se déplace dans le répertoire du projet pour lancer le projet avec yarn 
start
cd "$project_name"

# Lance le projet avec yarn start
yarn start

