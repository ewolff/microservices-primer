#3 Why Microservices? {#chapter-3}

There is more than one reason to use Microservices. Depending on the
context the architectural designs can look completely
differently. Therefore, it is not only important to know the
advantages, but also to judge their relevance for a concrete project
and to implement a fitting architecture.

##3.1 Scaling Agility {#section3-1}

As mentioned in [section 2.3](#section2-3), Microservices can affect the
organization. Ideally each Microservice should be developed by one
team or at least exactly one team should be in charge of the
Microservice.

This provides options for the scaling of agile projects: Normally all
teams have to coordinate and concertedly work on features. When each
team has its own stream of requirements and can implement them by
changes to its own Microservice, the teams can work largely
independently of each other on features. This allows to tackle also
larger projects in an agile manner. In principle the system is just
divided into multiple small projects which each can work independently
of each other. Apart from supporting a domain architecture it is also
very helpful that Microservices can bring features into production
without influencing other Microservices. This allows for a largely
independent development. In addition due to the independence
concerning features Microservices offer also technical independence:
Technology decisions can be limited to individual Microservices. This
extends the independence teams have: They cannot only largely
independently implement features, but also make their own independent
technical decisions.

Thereby Microservice-based architectures enable the independent
development of individual Microservices and therefore facilitate the
scaling of agile processes to larger project organizations.

##3.2	Migrating Legacy Applications {#section3-2}

Work with legacy code is often difficult: Systems grown over time are
often badly structured so that it is difficult to get an
overview. In addition, the code is often of poor quality and tests are
lacking. Besides the technological basis if often outdated so that
modern approaches cannot be used.

Some of these problems can be solved by changing the approach for
modifying the system: Instead of modifying the code of the legacy
system, the system is supplemented or partly replaced at its external
interfaces by Microservices. The advantage: Instead of editing the
badly structured and hard to understand legacy code, this code is
practically left untouched and rather supplemented by external
systems.

The overall goal is the complete replacement of the legacy system by a
multitude of Microservices. However, it is easy to start by
supplementing the legacy system by Microservices. This does not
require a lot of preparations and is can thus easily be tried
out. Should Microservices not prove to be a good solution in a
specific context, they are also easy to remove again from the system.

The easy integration of Microservices are one reason why Microservices
are so interesting. Replacing a legacy system by a multitude of
Microservices is often a very useful approach to rapidly benefit in a
system from advantages like Continuous Delivery.

##3.3 Sustainable Development Speed {#section3-3}

Microservice-based architectures distribute a system into multiple
independently deployable services. The distribution of a system into
Microservices is an important architecture decision. It determines the
responsibilities of the components.

In a deployment monolith there is also such an architecture at the
beginning. However, there it is often lost over time, since it is very
easy to incorporate new dependencies into a deployment monolith: It
suffices to reference a class somewhere in the code. The architecture of an E-commerce
system defines for instance that the order process is to call the
billing. In contrast, billing may not call the order
process. Dependencies which only go into one direction have the
advantage that modules remain changeable. In the example it is
possible to change the order process without having to modify
billing. However, changing the billing might affect the order
process, since the order process uses the billing.

During the implementation of features in the billing process a
developer might after all use functionalities from the order
process. Something like that happens easily. Experience shows that
this initial dependency is soon followed by additional ones so that it
is at some point not possible anymore to go on to develop the two
components independently since they are using each other.

In the case of Microservices it is not so easy to use another
Microservice just like that. Microservices have each an interface, and
it is only possible to use them via their interfaces. This requires to
call the interface via technologies such as REST or messaging. This
does not happen just by mistake.

If the Microservice intended to be used is developed by another team,
it can even be necessary to contact this team. Ultimately, the
distribution of architecture into Microservices is relatively stable,
and in contrast to deployment monolith the architecture cannot easily
get lost. Of course, similar results can also be accomplished by other
measures enforcing architecture integrity. There are for instance
architecture tools which alert developers to their transgression of
architecture rules. However, in the case of Microservices such
measures are already integrated into the system.

####Replaceability

Another important characteristic of Microservices is their
replaceability: Without much effort a Microservice can be replaced by
a new implementation. This solves another problem of legacy systems:
When a system cannot be maintained anymore, it is often also
impossible to rewrite it as the expenditure would just be too
large. However, to replace a Microservices is not very difficult.

####Conclusion

Within a Microservices-based system it should also in the long run be
easy to implement new features since a Microservice is small. If a
Microservice should nevertheless stop to be maintainable at some
point, it can be replaced. The architecture of the whole system can be
expected to be stable in the long run. Therefore, the long term
maintainability of the system can be ensured. In summary,
Microservice-based systems promise a lasting good maintainability and
changeability of the software system.

##3.4 Robustness {#section3-4}

In a Microservice-based system there is a high robustness in regards
to certain problems - unlike deployment monoliths: When a
functionality in a deployment monolith uses up a lot of CPU or memory,
other modules will be affected. If in the worst case a module causes
the system to break down, all other modules will likewise not be
available anymore.

A Microservice is a separate process or even an individual virtual
machine. Therefore, a problem in one Microservice does not influence
another Microservice since the operating system or the virtualization
isolates the Microservices from each other.

Nevertheless, Microservices are distributed systems. They run on
multiple servers and use the network. Servers and network can
fail. Accordingly, a Microservice-based system in its entirety should
not be very robust since it is more affected by these dangers.

Therefore, Microservices have to be safeguarded from the failure of
other Microservices. This is called "Resilience". Resilience can be
implemented in very different ways: When an order process cannot be
finished, it might be an option to try again later. When a credit card
cannot be verified, it might be a possibility to nevertheless perform
the order up to a certain upper limit. What this upper limit is would
have to be decided as part of the requirements of the system.

Resilience allows to make a Microservice system very robust. The basis
for this is the strict separation in processes or virtual machines.

##3.5 Continuous Delivery {#section3-5}

Continuous Delivery is an approach where software is regularly
brought into production. The basis for this is mainly a largely
automated process as illustrated in [Fig. 4](#Fig4):

* In the commit phase unit tests and static code analyses are
performed.

* Automated acceptance tests ensure that the software correctly
implements features.

* Capacity tests on the other hand check whether the performance is
fine and whether the expected load can be handled.

* Manual tests can address new features, but also error-prone areas.

* In the end the software goes into production.

{id="Fig4"}
![Fig. 4: Continuous Delivery Pipeline](images/04-ContinuousDeliveryPipeline.png)

Continuous Delivery is hard to implement in the context of deployment
monoliths:

* Automating tests and deployments is complex since deployment
monoliths are difficult to bring into production. The database which
can be quite large and often contains a lot of data plays for instance
a central role. In addition, many third party systems need to
integrated or simulated.

* The tests are laborious. Especially for deployment monoliths
  modifications can easily have unintended side effects. Therefore a
  comprehensive regression test has to be performed for each
  change. This causes a lot of effort and slows the Continuous
  Delivery Pipeline down.
  
* Finally, it is hard to safeguard a release. It would be conceivable
  to create a second environment, to deploy the new version in this
  environment and only to switch to the new version when it has been
  tested once more. In such a case it is also possible to fall back to
  the old version. However, for a deployment monolith such approaches
  are hard to implement because the required environment is too large
  and complex.
  
Microservices are independent deployment units. Therefore, they can
have independent Continuous Delivery Pipelines. These Pipelines can be
created relatively easily. In addition, it is comparably fast to bring a
Microservice through the Continuous Delivery Pipeline into
production. Moreover, deployments of Microservices are easier to
safeguard. All the problems concerning Continous Delivery in the
context of deployment monolith can be solved by the smaller size of
Microservices. Thus Continuous Delivery is profoundly facilitated by
Microservices.

Of course some measures are necessary to ensure the independent
deployment of Microservices. Nevertheless the advantages in regards to
Continuous Delivery are for many architects and developers an
important reason to get interested in Microservices.

##3.6 Independent Scalability {#section3-6}

Each Microservice runs as an individual process, sometimes even in a
separate virtual machine. This allows to scale just the concerned
Microservice when a certain functionality is used especially heavily
while the other Microservices continue to run with the same capacity.

This does not sound impressive at the start. However, in practice this
characteristic of Microservices leads to a number of profound
advantages since scaling is facilitated. In general performance
requirements which are limited to certain cases are really
demanding. The independent scalability of Microservices allows to
concentrate on the ones which are under heavy load, and to use much
less resources to deal with the problem than would be the case for a
deployment monolith. This can also be a relevant reason for
introducing Microservices.

##3.7 Technology Freedom {#section3-7}

In principle each Microservice can be implemented in a different
technology. Of course, this renders the system overall more
complex. This complexity can be limited by the use of standards for
operations, monitoring, log formats or deployment. This will ensure at
least that the operation is largely uniform.

Still the technology freedom allows for example to use an individual
search technology for the product search without requiring extensive
coordination with other Microservices and teams. When a team requires
a bugfix in a library and therefore wants to use a new version, this
change is likewise limited to one team and can therefore be
performed by this one team which then carries also the risk. In case
of a deployment monolith an extensive coordination would be necessary
and accordingly also more tests.

In the end new technologies can be tested without a large migration
effort. Risk and expenditure are limited: Initially a single
Microservice can be migrated. If the migration does not work, only
this one Microservice will fail and in addition of larger problems on
this one Microservice has to be newly implemented.

A special project for bringing a deployment monolith to another
technology is not necessary for Microservices and the migration is
much easier. This entails also other positive consequences: Developers
are free to try out new technologies which generally increases
motivation.

##3.8 Conclusion {#section3-8}

Microservices have a large number of advantages. Which advantages are
in the end the most important depends on the concrete context. For
many projects the focus is on the replacement of a deployment
monolith. In such a case the easy handling of the legacy system is an
important advantage during migration. Reasons to migrate are in such
cases often the wish to scale agile processes or for an easier
implementation of Continuous Delivery.

However, there are also very different scenarios where for instance
the objective is to increase the stability of an application in
operation. In this case robustness is an important motivation, and
independent scaling can be another important factor.

Therefore, the relevant advantages depend on the respective use
context. How Microservices should be used in the context of a certain
system likewise depends on the specific advantages which are supposed
to be realized.






