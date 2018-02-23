# 4 What's Next? {#chapter-4}

This primer can only provide a short introduction into
Microservices. Therefore, it is an important question how to go on
after reading this brochure.

## 4.1 Microservices: Just a Hype? {#section4-1}

Microservices are more than just a hype. Amazon employs the
distribution into teams with their own technologies already
since 2006. This architecture and this approach is what is nowadays
called Microservices. Pioneers like Netflix rightly expected so great advantages
from this architecture approach that they were willing to heavily
invest into the creation of the necessary infrastructures. Nowadays
the technologies they created are available for everybody so that the
introduction and the use of Microservices are much easier and less
costly.

In addition, the trends to agility, Continuous Delivery and Cloud are
reflected by Microservice-based architectures. Even beyond these
criteria there are good reasons for Microservices – ranging from
individual scalability to robustness. Therefore, Microservices are not
only a good supplement for a number of trends, but they represent also
a solution for different problems. The trend to use Microservices is
thus based on a number of reasons. Therefore it is extremely unlikely that
it will just be a short-lived hype.

## 4.2 Self-contained Systems {#section4-2}

An approach based on Microservices are
[Self-contained Systems](http://scs-architecture.org). They focus on
coarse-grained systems which allow teams to work independently. They
should be integrated on the UI level and only use asynchronous
communication among each other. This is a more coarse-grained
architecture than Microservices. While Microservices can be used in many different
scenarios and for many different purposes, as explained in [chapter 3](#chapter-3),
Self-contained Systems represent
a more specific approach to Microservices, which is custom-tailored to solve problems
of large projects.

## 4.3 Examples {#section4-3}

The primer discusses Microservices only theoretically and does not
introduce technologies for implementation.

http://ewolff.com/microservices-demos.html shows several examples for
the different options to implement microservices:

#### Synchronous Communication

There are several options for synchronous communication between microservices:

* The [Consul demo](https://github.com/ewolff/microservice-consul) is written
  in Java with Spring Cloud / Boot. The demo uses Consul for service discovery,
  Apache httpd for routing, Hystrix for resilience and Ribbon for load
  balancing. It also provides a
  [Prometheus installation](https://github.com/ewolff/microservice-consul#prometheus)
  for monitoring 
  and an
  [ELK stack](https://github.com/ewolff/microservice-consul#elastic-stack)
  for log analysis.

* The [Netflix demo](https://github.com/ewolff/microservice) uses the
  Netflix stack. The demo is written
  in Java with Spring Cloud / Boot. It uses Netflix Eureka for service discovery,
  Netflix Zuul for routing, Hystrix for resilience and Ribbon for load
  balancing.

* Kubernetes is a system to run Docker containers in a cluster. The
  [Kubernetes demo](https://github.com/ewolff/microservice-kubernetes)
  is written in Java with Spring Cloud / Boot. It uses Kubernetes for
  service discovery, routing and load balancing.  The demo also uses
  Hystrix for resilience. The code does not depend on Kubernetes.

* Cloud Foundry is a PaaS. It provides an application with an
  environment to run in. The
  [Cloud Foundry demo](https://github.com/ewolff/microservice-cloudfoundry)
  is written in Java with Spring Cloud / Boot. Uses Cloud Foundry for
  deployment, service discovery, routing and load balancing.  The demo
  also uses Hystrix for resilience. The code does not depend on Cloud
  Foundry.

#### Asynchronous Communication

Asynchronous communication makes it easier to deal with unreliable
networks and services:

* [Kafka](https://github.com/ewolff/microservice-kafka) uses Kafka for
communication. Kafka is a message-oriented middleware and allows
systems to send messages to one another.

* [Atom](https://github.com/ewolff/microservice-atom) uses REST / HTTP
  for asynchronous communication with the Atom format.

#### UI Integration

UI integration provides very loose coupling:

* [ESI](https://github.com/ewolff/SCS-ESI) shows how Edge Side
Includes (ESI) can be used to integrate the UI of microservices. On
microservice is written in Java with Spring Boot, the other one with
Go. The Go microservices is built using multi stage Docker containers.

* [jQuery](https://github.com/ewolff/SCS-jQuery) shows how jQuery can
  be used to integrate the UI of microservices.

The website for each demo explains how the demo can be built and
started.


## 4.4 More literature {#section4-4}

Additional literature such as the
[Microservices Book](http://microservices-book.com) (there is also a
[German version](http://microservices-buch.de)) by the same author
will be needed to appreciate the full scope of Microservices and to
learn how to actually implement them technically.

The free booklet
[Microservices Recipes](http://practical-microservices.com/recipes.html)
gives an overview of technologies that can be used to implement a
microservices architecture. It explains the demos mentioned above in
more detail and illustrates how the technology work and to provide a
foundation for the implementation of a microservices architecture.
There is also a
[German version](http://microservices-praxisbuch.de/rezepte.html)).

The book
[Microservices - A Practical Guide](http://practical-microservices.com/) 
contains a more detailed description of technologies for the
implementation of microservices. In addition, it contains an
introduction to microservices and an overview of technologies for the
monitoring of microservices. There is also a
[German version](http://microservices-praxisbuch.de/)).


## 4.5 Final Remark

A final remark: the risk associated with introducing Microservices is very
limited: A first Microservice has just to be developed and brought
into production. This Microservice can for instance supplement an
existing deployment monolith. Should this approach not work out, it is
very easy to remove the Microservice again.
