Installing SonarQube on Minikube involves several steps, including setting up Minikube, deploying SonarQube, and accessing the service. Here’s a comprehensive guide to achieving this:

### Prerequisites
- **Install Minikube**: Follow the [official Minikube installation guide](https://minikube.sigs.k8s.io/docs/start/) to install Minikube on your local machine.
- **Install kubectl**: Ensure you have `kubectl` installed to interact with your Kubernetes cluster. You can find installation instructions [here](https://kubernetes.io/docs/tasks/tools/install-kubectl/).

### Start Minikube
Open a terminal and start Minikube with the command:
```bash
minikube start
```

### Create a Namespace (Optional)
Creating a separate namespace for SonarQube can help manage resources better. Use the command:
```bash
kubectl create namespace sonar
```

### Deploy SonarQube using Helm
- **Install Helm**: If you don't have Helm installed, you can find installation instructions [here](https://helm.sh/docs/intro/install/).

- **Add the SonarQube Helm Repository**:
   ```bash
   helm repo add sonarqube https://SonarSource.github.io/helm-sonarqube
   helm repo update
   ```

- **Install SonarQube**:
   Use the following command to install SonarQube:
   ```bash
   helm install sonar sonarqube/sonarqube --namespace sonar --set service.type=NodePort
   ```

### Check the Status of the Deployment
You can check the status of the SonarQube deployment with the command:
```bash
kubectl get pods -n sonar
```
Wait until all pods are in the `Running` state.

### Get the NodePort
To access SonarQube, you need the NodePort assigned to it. You can find it with the command:
```bash
kubectl get services -n sonar
```
Look for the `sonar` service and note the `NodePort` under the `PORT(S)` column.

### Access SonarQube
- **Get the Minikube IP**:
   ```bash
   minikube ip
   ```
   This will provide the IP address of your Minikube cluster.

- **Open SonarQube in a Web Browser**:
   Navigate to:
   ```
   http://<minikube-ip>:<node-port>
   ```
   Replace `<minikube-ip>` with the IP obtained and `<node-port>` with the NodePort found in the previous step.

### Set Up SonarQube
- The default credentials for SonarQube are:
   - **Username**: `admin`
   - **Password**: `admin`

- After logging in, you will be prompted to change the default password.

### Clean Up
To delete the SonarQube deployment when you no longer need it, run:
```bash
helm uninstall sonar --namespace sonar
kubectl delete namespace sonar
```

### Troubleshooting
- If you encounter issues with pod startup, check the logs:
  ```bash
  kubectl logs <pod-name> -n sonar
  ```

Following this guide should help you successfully install and run SonarQube on Minikube. For further customization or scaling, consider exploring the SonarQube Helm chart values to modify configurations as needed.