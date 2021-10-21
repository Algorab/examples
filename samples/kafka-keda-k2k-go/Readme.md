# kafka keda k2k2 go example

For best, use a fresh and clean microk8s installation
## microk8s installation
### ubuntu 
```shell
snap install microk8s --classic --channel=1.21/stable
```

### cluster setup

Install the files from the deploy directory.
Check every part is correctly running, before
step further.

## commands

### function working
```shell
fission fn test --name k-consumer --body="foo" --fns kafka-keda-k2k-go
```

### see error

```shell
stern -n keda ".*"
```

The keda operator should produce this error message: 
```text
keda-operator-574c6d4769-5svr2 keda-operator 2021-10-21T10:02:15.964Z   ERROR   controllers.ScaledObject        ScaledObject doesn't have correct scaleTargetRef specification      {"ScaledObject.Namespace": "kafka-keda-k2k-go", "ScaledObject.Name": "k2k", "error": "deployments.apps \"k2k\" not found"}
```
