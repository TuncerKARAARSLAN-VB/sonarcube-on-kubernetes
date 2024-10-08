### prompt

**kubernetes object list > table format**

Here is the Kubernetes object list in table format:

| **Kubernetes Object**   | **Description**                                                       | **Purpose**                                                |
|-------------------------|-----------------------------------------------------------------------|------------------------------------------------------------|
| [**Pod**](01-21-pod.md)                 | The smallest deployable unit in Kubernetes. Contains one or more containers. | To run containers.                                          |
| **Service**             | Exposes a set of Pods as a network service.                           | Provides network access to Pods, balancing traffic.          |
| **Deployment**          | Manages the deployment of Pods and ensures the desired state.         | To manage stateless applications and support rolling updates. |
| **ConfigMap**           | Stores non-confidential data in key-value pairs.                      | To configure containers with environment-specific variables. |
| **Secret**              | Stores sensitive information, such as passwords or tokens.            | To securely pass sensitive data to Pods.                    |
| **PersistentVolume (PV)**| A storage resource in the cluster.                                    | To provide persistent storage for Pods.                     |
| **PersistentVolumeClaim (PVC)**| Requests storage from a PersistentVolume.                      | To claim and use a specific amount of storage from a PV.    |
| **Namespace**           | Provides a mechanism to isolate groups of resources within a cluster. | To organize resources and separate environments or projects. |
| **ReplicaSet**          | Ensures that a specified number of Pod replicas are running.           | To maintain a stable set of Pod replicas.                   |
| **DaemonSet**           | Ensures that a copy of a Pod runs on all (or some) Nodes.             | To deploy system-wide services on every Node.               |
| **StatefulSet**         | Manages stateful applications, like databases.                        | To manage Pods that require stable storage or network identities. |
| **Job**                 | Creates one or more Pods and ensures they run to completion.          | To run a batch task that needs to complete successfully.    |
| **CronJob**             | Creates Jobs on a scheduled basis.                                    | To run tasks at specific times, like a cron job.            |
| **Ingress**             | Manages external access to services, typically HTTP or HTTPS.         | To route external traffic into the cluster using DNS and load balancing. |
| **Node**                | A worker machine in Kubernetes, part of the cluster.                  | To run workloads (Pods) as part of the cluster.             |
| **HorizontalPodAutoscaler (HPA)** | Automatically scales the number of Pods in a Deployment, ReplicaSet, or StatefulSet based on observed CPU/memory. | To auto-scale workloads based on resource usage.            |
| **ClusterRole**         | Defines permissions at the cluster level.                             | To grant permissions across the whole cluster.              |
| **Role**                | Defines permissions within a specific namespace.                      | To grant permissions within a namespace.                    |
| **RoleBinding**         | Grants specific roles to users or services within a namespace.        | To bind roles to subjects (users, groups, or services).     |
| **ClusterRoleBinding**  | Grants cluster-wide roles to users or services.                       | To bind cluster-wide roles to subjects.                     |

This table provides a brief description and the primary purpose of the key Kubernetes objects used in a cluster.