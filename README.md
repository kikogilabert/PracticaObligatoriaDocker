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
<h3>Running the Project</h3>
<p>To run the project, make sure you have Docker and Docker Compose installed, then run the following command:</p>
    <p>docker-compose up -d</p>   

<h3>Stopping the project</h3>
<p>To stop the project, press Ctrl+C in the terminal where you ran docker-compose up. To remove the containers, run:<p>
    <p>docker-compose down</p> 