# springboot-kubernetes

1. Fetch the repository
    1. Start the application
2. Start docker
    1. `mvn clean install` (or Maven/Lifecycle/install)
    2. Check if the container built and installed successfully
    3. Push to remote repository
4. Download minikube
    1. minikube start
    2. minikube dashboard to check if it works properly
    3. Add your credentials to minikube's secrets
        1. `kubectl create secret docker-registry regcred --docker-server=https://index.docker.io/v2/ --docker-username=username --docker-password=p4ssw0rd --docker-email=user.mail@mail.com`
5. Create a deployment based on `deployment.yaml`
    1. From project root
        1. `kubectl apply -f deployment.yaml`
    2. Check if the deployment creation was successful in the dashboard
    3. Get deployments
        1. `kubectl get deployments`
            1.  Result -> `spring-test-node`
    4. Expose the deployment
        1. `kubectl expose deployment spring-test-node --type=LoadBalancer --port=8080`
    5. Get services
        1. `kubectl get services`
           
| NAME             | TYPE          | EXTERNAL-IP |
| -----------------|:-------------:| ------------|
| kubernetes       | ClusterIP     | none        |
| spring-test-node | LoadBalancer  | pending     |

1. `minikube service spring-test-node`

| NAMESPACE |       NAME       | TARGET PORT |          URL           |
|-----------|------------------|-------------|------------------------|
| default   | spring-test-node |             | http://127.0.0.1:63143 |

2. SpringBoot application is available by calling http://127.0.0.1:63143/ping
    
