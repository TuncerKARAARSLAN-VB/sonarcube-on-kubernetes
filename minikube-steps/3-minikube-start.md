Minikube is a version of kubernetes running on a single node. So it runs on a single machine but you get all the commands and experience of kubernetes. It is not designed for long stable operation. You can see that it seems to save energy when you don't use it for a long time. But this should not be a problem. It can be used comfortably since I turned on my IF. You can train yourself. Remember to start the kubernetes environment every time you enter Docker.

```bash
minikube start
```

Once Minikube is running, list the pods. If the pods are listed with this command, there is no problem.

```bash
kubectl get pods --all-namespaces
```

If you see an output like below, the minikube has stopped. You can start minikube using the command above.

## Error Messages
```
E1006 16:21:19.174702   22395 memcache.go:265] "Unhandled Error" err="couldn't get current server API group list: Get \"http://localhost:8080/api?timeout=32s\": dial tcp [::1]:8080: connect: connection refused"
E1006 16:21:19.176172   22395 memcache.go:265] "Unhandled Error" err="couldn't get current server API group list: Get \"http://localhost:8080/api?timeout=32s\": dial tcp [::1]:8080: connect: connection refused"
E1006 16:21:19.177606   22395 memcache.go:265] "Unhandled Error" err="couldn't get current server API group list: Get \"http://localhost:8080/api?timeout=32s\": dial tcp [::1]:8080: connect: connection refused"
E1006 16:21:19.179020   22395 memcache.go:265] "Unhandled Error" err="couldn't get current server API group list: Get \"http://localhost:8080/api?timeout=32s\": dial tcp [::1]:8080: connect: connection refused"
E1006 16:21:19.180474   22395 memcache.go:265] "Unhandled Error" err="couldn't get current server API group list: Get \"http://localhost:8080/api?timeout=32s\": dial tcp [::1]:8080: connect: connection refused"
```

## General Error
```
The connection to the server localhost:8080 was refused - did you specify the right host or port?
```

## Try Re Start Minikube
```bash
minikube start
```