# paperbox

## Local dev

First, set up local ruby development environment: 

``` bash
$ brew install rbenv && rbenv install && gem install bundler 
```

You can run the server with the following command:

``` bash
$ bundler install && ruby app.rb 
```

Only a simple API is provided:
 
``` bash
$ curl http://localhost:4567/previews?url=https://blog.argoproj.io/introducing-argo-a-container-native-wonetes-55c0b4b76fac

<aside class="onebox whitelistedgeneric">
  <header class="source">
    <a href="https://blog.argoproj.io/introducing-argo-a-container-native-workflow-engine-for-kubernetes-55c0b4b76fac?source=userActivityShare-13053a436336-1504739366" target="_blank" rel="nofollow noopener">blog.argoproj.io</a>
  </header>
  <article class="onebox-body">
    <img src="https://cdn-images-1.medium.com/max/1200/1*yUQOBOdKiOzZkR90TXDlxQ.png" width="" height="" class="thumbnail">

<h3><a href="https://blog.argoproj.io/introducing-argo-a-container-native-workflow-engine-for-kubernetes-55c0b4b76fac?source=userActivityShare-13053a436336-1504739366" target="_blank" rel="nofollow noopener">Introducing Argo — A Container-Native Workflow Engine for Kubernetes</a></h3>

<p>Today, we are excited to announce the launch of the Argo Project, an open source container-native workflow engine for Kubernetes conceived…</p>

  </article>
  <div class="onebox-metadata">


  </div>
  <div style="clear: both"></div>
</aside>
```

## Dockerize

``` bash
make run 
```