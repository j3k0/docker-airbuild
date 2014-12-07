docker-airbuild
===============

Docker image to build your apps with Adove AIR SDK

Usage
-----

Pull:

    docker pull jeko/airbuild

From your air project directory:

    docker run -it --rm -v `pwd`:/src jeko/airbuild:latest mxmlc <arguments>
    docker run -it --rm -v `pwd`:/src jeko/airbuild:latest adl <arguments>
    docker run -it --rm -v `pwd`:/src jeko/airbuild:latest adt <arguments>
    etc.

An example project can be found here: https://github.com/j3k0/BaseAIRAppLinux
