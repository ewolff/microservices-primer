#4 What's Next? {#chapter-4}

This primer can only provide a short introduction into
Microservices. Therefore, it is an important question how to go on
after reading this brochure.

##4.1 Microservices: Just a Hype? {#section4-1}

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

##4.2 Self-contained Systems {#section4-2}

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

##4.3 An Example {#section4-3}

The primer discusses Microservices only theoretically and does not
introduce technologies for implementation. On
[Github](https://github.com/ewolff/microservice) an example can be
found which uses Java, Spring Boot, Spring Cloud and the Netflix stack
to run a Microservice-based architecture in a Docker environment. It
is worthwhile to have a look into this example to get an idea of the
technologies enabling the use of Microservices.

##4.4 More literature {#section4-4}

Additional literature such as the
[Microservices Book](http://microservices-book.com) (there is also a
[German version](http://microservices-buch.de)) by the same author
will be needed to appreciate the full scope of Microservices and to
learn how to actually implement them technically.

However, the risk associated with introducing Microservices is very
limited: A first Microservice has just to be developed and brought
into production. This Microservice can for instance supplement an
existing deployment monolith. Should this approach not work out, it is
very easy to remove the Microservice again.




