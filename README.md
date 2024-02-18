<h1>Practica Obligatoria</h1>

<p>This project is a full-stack application that uses a PostgreSQL database, a Django backend, a React frontend, and an Nginx load balancer. All components are containerized using Docker.</p>

<h2>Services</h2>

<h3>PostgreSQL</h3>

<p>The PostgreSQL service uses the latest PostgreSQL image and initializes the database with a script located at ./postgresql/init.sql.</p>

<h3>Django Backend</h3>

<p>The Django backend service is built from a Dockerfile located at ./Django/Dockerfile.django. It depends on the PostgreSQL service.</p>

<h3>PGAdmin</h3>

<p>The PGAdmin service uses the latest PGAdmin image and is configured with default credentials. It depends on the PostgreSQL service.</p>

<h3>React Frontend</h3>

<p>The React frontend service is built from a Dockerfile located at ./React/Dockerfile.react. It runs the development server on port 5173 and depends on the Django backend service.</p>

<h3>Nginx Load Balancer</h3>
<p>The Nginx load balancer service is built from a Dockerfile located at ./loadbalancer/Dockerfile.loadbalancer. It depends on both the Django backend and React frontend services.</p>

<h2>Usage</h2>

<h3>1. Installing React Frontend Dependencies</h3>
<p>Navigate to the React frontend folder and install Node.js dependencies using npm:</p>
    <p>npm install</p>   
    
<h3>2. Running the Project</h3>
<p>Once all dependencies are installed, go back to the project's root folder:</p>
    <p>cd ..</p>
    
<p>To run the project, make sure you have Docker and Docker Compose installed, then run the following command:</p>
    <p>docker-compose up -d</p>   
<p>Once the project is on, you must enter PGAdmin trhow the port assigned in the docker. Use the PGAdmin credentials stored in the .env and log in</p>
<p>Follow the steps:</p>
<img src="https://github-production-user-asset-6210df.s3.amazonaws.com/118535012/305485806-873967bf-7b29-47bc-ba49-786f38d276fa.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAVCODYLSA53PQK4ZA%2F20240216%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240216T165459Z&X-Amz-Expires=300&X-Amz-Signature=d0d34ce1a9b81154de6b1e8a313acf10faf96ec737e135131da125fdba567be0&X-Amz-SignedHeaders=host&actor_id=118535012&key_id=0&repo_id=754670024"/>
<p>Click on Server and go to Connection and we will have to add the name of the postgres container from the docker-compose file and the username and password from the .env</p>
<img src="https://github.com/kikogilabert/PracticaObligatoriaDocker/assets/118535012/486db80d-42f8-4ad1-b259-142987699fcc" />
<p>Before saving we will have to add a name for the Server (the one you want)</p>

<hr>
<h3>Stopping the project</h3>
<p>To stop the project, press Ctrl+C in the terminal where you ran docker-compose up. To remove the containers, run:<p>
    <p>docker-compose down</p> 
