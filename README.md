<h1>Pràctica Obligatòria</h1>
<p>Aquest projecte és una aplicació de pila completa que utilitza una base de dades PostgreSQL, un backend de Django, un frontend de React i un equilibrador de càrrega Nginx. Tots els components estan contenitzats amb Docker.</p>

<h2>Serveis</h2>

<h3>PostgreSQL</h3>

<p>El servei de PostgreSQL utilitza la darrera imatge de PostgreSQL i inicialitza la base de dades amb un script ubicat a ./postgresql/init.sql, a més de fer una còpia de seguretat amb un arxiu .dump.</p>
<p>La base de dades està en execució al port 5432.</p>

<h3>Backend de Django</h3>

<p>El servei de backend de Django es construeix des d'un Dockerfile situat a ./Django/Dockerfile.django. Depèn del servei de PostgreSQL.</p>
<p>El servei està en execució al port 8888.</p>
<hr/>
<h3>PGAdmin</h3>

<p>El servei de PGAdmin utilitza la darrera imatge de PGAdmin i està configurat amb credencials per defecte. Depèn del servei de PostgreSQL.</p>
<p>El servei està en execució al port 5050.</p>
<hr/>
<h3>Frontend de React</h3>

<p>El servei de frontend de React es construeix des d'un Dockerfile situat a ./React/Dockerfile.react. Executa el servidor de desenvolupament al port 5173 i depèn del servei de backend de Django.</p>
<p>El servei està en execució al port 5173.</p>
<hr/>
<h3>Equilibrador de càrrega Nginx</h3>
<p>El servei d'equilibrador de càrrega Nginx es construeix des d'un Dockerfile situat a ./loadbalancer/Dockerfile.loadbalancer. Depèn tant del servei de backend de Django com del servei de frontend de React.</p>
<p>El servei està situat al port 80.</p>
<hr/>
<br/>
<h2>Ús</h2>
<p>Clona el repositori al teu equip local amb: "git clone https://github.com/kikogilabert/PracticaObligatoriaDocker"</p>
<p>Hauràs de canviar de rama a la "main_docker_compose"</p>
<br/>

<h3>1. Instal·lació de les dependències del frontend de React</h3>
<p>Navega fins a la carpeta de frontend de React i instal·la les dependències de Node.js utilitzant npm:</p>
    <p>npm install</p>

<h3>2. Execució del projecte</h3>
<p>Un cop instal·lades totes les dependències, torna a la carpeta arrel del projecte:</p>
    <p>cd ..</p>
    
<p>Per executar el projecte, assegura't de tenir instal·lats Docker i Docker Compose, i després executa la següent comanda:</p>
    <p>docker-compose up -d</p>
<p>Un cop el projecte estigui en marxa, has d'entrar a PGAdmin a través del port assignat al docker. Utilitza les credencials de PGAdmin emmagatzemades a l'arxiu .env i inicia sessió.</p>

<h4>Credencials</h4>
<ul>
    <li>Nom d'usuari de PgAdmin: "admin@example.com"</li>
    <li>Contrasenya de PgAdmin: "admin"</li>
</ul>

<p>Segueix els passos:</p>
<img src="https://github-production-user-asset-6210df.s3.amazonaws.com/118535012/305485806-873967bf-7b29-47bc-ba49-786f38d276fa.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAVCODYLSA53PQK4ZA%2F20240216%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240216T165459Z&X-Amz-Expires=300&X-Amz-Signature=d0d34ce1a9b81154de6b1e8a313acf10faf96ec737e135131da125fdba567be0&X-Amz-SignedHeaders=host&actor_id=118535012&key_id=0&repo_id=754670024"/>
<p>Fes clic a Servidor i ves a Connexió, on haurem d'afegir el nom del contenidor de postgres segons l'arxiu docker-compose i el nom d'usuari i la contrasenya de l'arxiu .env.</p>

<h4>Credencials</h4>
<ul>
    <li>Nom de l'amfitrió del contenidor de Postgres: "postgres_container"</li>
    <li>Nom d'usuari del contenidor de Postgres: "postgres"</li>
    <li>Contrasenya del contenidor de Postgres: "12345"</li>
</ul>
<img src="https://github.com/kikogilabert/PracticaObligatoriaDocker/assets/118535012/486db80d-42f8-4ad1-b259-142987699fcc"/>
<p>Abans de desar-ho, haurem d'afegir un nom pel servidor (el que vulgues).</p>

<hr>
<h3>Aturar el projecte</h3>
<p>Per aturar el projecte, prem Ctrl+C a la terminal on has executat docker-compose up. Per eliminar els contenidors, executa:</p>
    <p>docker-compose down</p>
