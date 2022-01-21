# Your-SB-Parent-POM
Your defined stack standards for Spring Boot Projects
Purpose is to provide a common Spring Boot version and associated libraries for Your Spring Boot Builds.

## Current Base Dependency Tree Versions Established
This does not include dependencies which you select by referencing a 'stack' POM(s) or other dependencies to your project.

```
 $ mvn dependency:tree | tee tree.log
 
  Scanning for projects...
 
 ------------------< io.yourdomain:springboot-parent >-------------------
 Building springboot-parent 0.0.1
 --------------------------------[ pom ]---------------------------------
 
 --- maven-dependency-plugin:3.2.0:tree (default-cli) @ springboot-parent ---
 io.yourdomain:springboot-parent:pom:0.0.1
 +- org.springframework.boot:spring-boot-starter:jar:2.6.3:compile
 |  +- org.springframework.boot:spring-boot:jar:2.6.3:compile
 |  +- org.springframework.boot:spring-boot-autoconfigure:jar:2.6.3:compile
 |  +- org.springframework.boot:spring-boot-starter-logging:jar:2.6.3:compile
 |  +- jakarta.annotation:jakarta.annotation-api:jar:1.3.5:compile
 |  +- org.springframework:spring-core:jar:5.3.15:compile
 |  |  \- org.springframework:spring-jcl:jar:5.3.15:compile
 |  \- org.yaml:snakeyaml:jar:1.29:compile
 +- org.springframework.boot:spring-boot-starter-log4j2:jar:2.6.3:compile
 |  \- org.slf4j:jul-to-slf4j:jar:1.7.33:compile
 +- org.apache.logging.log4j:log4j-core:jar:2.17.1:compile
 |  \- org.apache.logging.log4j:log4j-api:jar:2.17.1:compile
 +- org.slf4j:slf4j-simple:jar:1.7.32:compile
 |  \- org.slf4j:slf4j-api:jar:1.7.33:compile
 +- org.springframework:spring-context-support:jar:5.3.15:compile
 |  +- org.springframework:spring-beans:jar:5.3.15:compile
 |  \- org.springframework:spring-context:jar:5.3.15:compile
 |     \- org.springframework:spring-expression:jar:5.3.15:compile
 +- org.springframework.boot:spring-boot-starter-actuator:jar:2.6.3:compile
 |  \- org.springframework.boot:spring-boot-actuator-autoconfigure:jar:2.6.3:compile
 |     +- org.springframework.boot:spring-boot-actuator:jar:2.6.3:compile
 |     \- com.fasterxml.jackson.datatype:jackson-datatype-jsr310:jar:2.13.1:runtime
 +- org.springframework.boot:spring-boot-starter-aop:jar:2.6.3:compile
 |  +- org.springframework:spring-aop:jar:5.3.15:compile
 |  \- org.aspectj:aspectjweaver:jar:1.9.7:compile
 +- org.springframework.retry:spring-retry:jar:1.3.1:compile
 |  \- javax.annotation:javax.annotation-api:jar:1.3.2:compile
 +- org.springframework:spring-aspects:jar:5.3.15:compile
 +- org.springframework.cloud:spring-cloud-starter-bootstrap:jar:3.1.0:compile
 |  \- org.springframework.cloud:spring-cloud-starter:jar:3.1.0:compile
 |     \- org.springframework.security:spring-security-rsa:jar:1.0.10.RELEASE:compile
 |        \- org.bouncycastle:bcpkix-jdk15on:jar:1.68:compile
 |           \- org.bouncycastle:bcprov-jdk15on:jar:1.68:compile
 +- org.springframework.cloud:spring-cloud-config-client:jar:3.1.0:compile
 |  +- org.springframework.cloud:spring-cloud-commons:jar:3.1.0:compile
 |  |  \- org.springframework.security:spring-security-crypto:jar:5.6.1:compile
 |  +- org.springframework.cloud:spring-cloud-context:jar:3.1.0:compile
 |  +- org.springframework:spring-web:jar:5.3.15:compile
 |  +- com.fasterxml.jackson.core:jackson-annotations:jar:2.13.1:compile
 |  +- com.fasterxml.jackson.core:jackson-databind:jar:2.13.1:compile
 |  |  \- com.fasterxml.jackson.core:jackson-core:jar:2.13.1:compile
 |  \- org.apache.httpcomponents:httpclient:jar:4.5.13:compile
 |     +- org.apache.httpcomponents:httpcore:jar:4.4.15:compile
 |     \- commons-codec:commons-codec:jar:1.15:compile
 +- org.springframework.cloud:spring-cloud-starter-consul-discovery:jar:3.1.0:compile
 |  +- org.springframework.cloud:spring-cloud-starter-consul:jar:3.1.0:compile
 |  |  +- org.springframework.cloud:spring-cloud-consul-core:jar:3.1.0:compile
 |  |  |  \- org.springframework.boot:spring-boot-starter-validation:jar:2.6.3:compile
 |  |  |     +- org.apache.tomcat.embed:tomcat-embed-el:jar:9.0.56:compile
 |  |  |     \- org.hibernate.validator:hibernate-validator:jar:6.2.0.Final:compile
 |  |  |        +- jakarta.validation:jakarta.validation-api:jar:2.0.2:compile
 |  |  |        +- org.jboss.logging:jboss-logging:jar:3.4.3.Final:compile
 |  |  |        \- com.fasterxml:classmate:jar:1.5.1:compile
 |  |  +- com.ecwid.consul:consul-api:jar:1.4.5:compile
 |  |  \- com.google.code.gson:gson:jar:2.8.9:compile
 |  +- org.springframework.cloud:spring-cloud-consul-discovery:jar:3.1.0:compile
 |  \- org.springframework.cloud:spring-cloud-starter-loadbalancer:jar:3.1.0:compile
 |     +- org.springframework.cloud:spring-cloud-loadbalancer:jar:3.1.0:compile
 |     |  +- io.projectreactor:reactor-core:jar:3.4.14:compile
 |     |  |  \- org.reactivestreams:reactive-streams:jar:1.0.3:compile
 |     |  \- io.projectreactor.addons:reactor-extra:jar:3.4.6:compile
 |     +- org.springframework.boot:spring-boot-starter-cache:jar:2.6.3:compile
 |     \- com.stoyanr:evictor:jar:1.0.0:compile
 +- io.micrometer:micrometer-core:jar:1.8.2:compile
 |  +- org.hdrhistogram:HdrHistogram:jar:2.1.12:compile
 |  \- org.latencyutils:LatencyUtils:jar:2.0.3:runtime
 +- io.micrometer:micrometer-registry-jmx:jar:1.8.2:compile
 |  \- io.dropwizard.metrics:metrics-jmx:jar:4.2.7:compile
 |     \- io.dropwizard.metrics:metrics-core:jar:4.2.7:compile
 +- io.micrometer:micrometer-registry-prometheus:jar:1.8.2:compile
 |  \- io.prometheus:simpleclient_common:jar:0.12.0:compile
 +- io.prometheus:simpleclient_pushgateway:jar:0.11.0:compile
 |  +- io.prometheus:simpleclient:jar:0.12.0:compile
 |  |  +- io.prometheus:simpleclient_tracer_otel:jar:0.12.0:compile
 |  |  |  \- io.prometheus:simpleclient_tracer_common:jar:0.12.0:compile
 |  |  \- io.prometheus:simpleclient_tracer_otel_agent:jar:0.12.0:compile
 |  \- javax.xml.bind:jaxb-api:jar:2.3.1:compile
 |     \- javax.activation:javax.activation-api:jar:1.2.0:compile
 +- org.projectlombok:lombok:jar:1.18.22:provided
 +- org.springframework.boot:spring-boot-starter-test:jar:2.6.3:test
 |  +- org.springframework.boot:spring-boot-test:jar:2.6.3:test
 |  +- org.springframework.boot:spring-boot-test-autoconfigure:jar:2.6.3:test
 |  +- com.jayway.jsonpath:json-path:jar:2.6.0:test
 |  |  \- net.minidev:json-smart:jar:2.4.7:test
 |  |     \- net.minidev:accessors-smart:jar:2.4.7:test
 |  |        \- org.ow2.asm:asm:jar:9.1:test
 |  +- jakarta.xml.bind:jakarta.xml.bind-api:jar:2.3.3:test
 |  |  \- jakarta.activation:jakarta.activation-api:jar:1.2.2:test
 |  +- org.assertj:assertj-core:jar:3.21.0:test
 |  +- org.hamcrest:hamcrest:jar:2.2:test
 |  +- org.junit.jupiter:junit-jupiter:jar:5.8.2:test
 |  |  +- org.junit.jupiter:junit-jupiter-params:jar:5.8.2:test
 |  |  \- org.junit.jupiter:junit-jupiter-engine:jar:5.8.2:test
 |  |     \- org.junit.platform:junit-platform-engine:jar:1.8.2:test
 |  +- org.skyscreamer:jsonassert:jar:1.5.0:test
 |  |  \- com.vaadin.external.google:android-json:jar:0.0.20131108.vaadin1:test
 |  +- org.springframework:spring-test:jar:5.3.15:test
 |  \- org.xmlunit:xmlunit-core:jar:2.8.4:test
 +- org.mockito:mockito-core:jar:3.10.0:test
 |  +- net.bytebuddy:byte-buddy:jar:1.11.22:test
 |  +- net.bytebuddy:byte-buddy-agent:jar:1.11.22:test
 |  \- org.objenesis:objenesis:jar:3.2:test
 +- org.mockito:mockito-junit-jupiter:jar:3.10.0:test
 |  \- org.junit.jupiter:junit-jupiter-api:jar:5.8.2:test
 |     +- org.opentest4j:opentest4j:jar:1.2.0:test
 |     +- org.junit.platform:junit-platform-commons:jar:1.8.2:test
 |     \- org.apiguardian:apiguardian-api:jar:1.1.2:test
 \- org.springframework.cloud:spring-cloud-starter-sleuth:pom:3.0.2:compile
    +- org.springframework.cloud:spring-cloud-sleuth-autoconfigure:jar:3.1.0:compile
    |  +- org.springframework.cloud:spring-cloud-sleuth-instrumentation:jar:3.1.0:compile
    |  |  \- org.springframework.cloud:spring-cloud-sleuth-api:jar:3.1.0:compile
    |  \- org.aspectj:aspectjrt:jar:1.9.7:compile
    \- org.springframework.cloud:spring-cloud-sleuth-brave:jar:3.1.0:compile
       +- io.zipkin.brave:brave:jar:5.13.2:compile
       +- io.zipkin.brave:brave-context-slf4j:jar:5.13.2:compile
       +- io.zipkin.brave:brave-instrumentation-messaging:jar:5.13.2:compile
       +- io.zipkin.brave:brave-instrumentation-rpc:jar:5.13.2:compile
       +- io.zipkin.brave:brave-instrumentation-spring-rabbit:jar:5.13.2:compile
       +- io.zipkin.brave:brave-instrumentation-kafka-clients:jar:5.13.2:compile
       +- io.zipkin.brave:brave-instrumentation-kafka-streams:jar:5.13.2:compile
       +- io.zipkin.brave:brave-instrumentation-httpclient:jar:5.13.2:compile
       |  \- io.zipkin.brave:brave-instrumentation-http:jar:5.13.2:compile
       +- io.zipkin.brave:brave-instrumentation-httpasyncclient:jar:5.13.2:compile
       +- io.zipkin.brave:brave-instrumentation-jms:jar:5.13.2:compile
       +- io.zipkin.brave:brave-instrumentation-mongodb:jar:5.13.2:compile
       +- io.zipkin.aws:brave-propagation-aws:jar:0.21.3:compile
       \- io.zipkin.reporter2:zipkin-reporter-metrics-micrometer:jar:2.16.1:compile
          \- io.zipkin.reporter2:zipkin-reporter:jar:2.16.1:compile
             \- io.zipkin.zipkin2:zipkin:jar:2.23.0:compile
 ------------------------------------------------------------------------
 BUILD SUCCESS
 ------------------------------------------------------------------------
 Total time:  1.559 s
 Finished at: 2022-01-21T12:55:13-08:00
 ------------------------------------------------------------------------
 
```



## Properties 
The high-level properties will be established within this Parent POM, 
which can be overridden within your project, by simple specifying a **'properties'** section in your project POM and specify 
the property name, which was established within this parent.

For example, by default, the parent POM specifies JAVA 11 as our default Java Version.
To Override, simply create and/or add the **'java.version'** property within your project's POM, as follows:

```
<properties>
    <java.version>17</java.version>
    <maven.compiler.source>17</maven.compiler.source>
    <maven.compiler.target>17</maven.compiler.target>
</properties>
```
We have overridden the base property from Java 11 to Java 17.

If we get to a point were we are overriding certain properties in all projects,
then that property value should be placed and established in the parent POM to reduce
unnecessary overrides throughout all projects.


## Dependency Stacks
Dependency stacks have been established to include certain dependencies which may or may not be wanted within your project itself.

It is up to you to decide to use a Stack POM directly by including the Stack POM as a dependency or review the necessary Stack POM and
include what you need and deem necessary for your project.

For example to include the stack of **'Kafka'**, simply include the associated Kafka Stack POM in your poject's POM.

Example of including various stacks in your Project POM:
```
<dependencies>

		<!-- Web Stack -->
		<dependency>
			<groupId>io.yourdomain</groupId>
			<artifactId>web-stack</artifactId>
			<version>0.0.1</version>
			<type>pom</type>
		</dependency>
		
		<!-- Kafka Stack -->
		<dependency>
			<groupId>io.yourdomain</groupId>
			<artifactId>kafka-stack</artifactId>
			<version>0.0.1</version>
			<type>pom</type>
		</dependency>

  ...

</dependencies>
```
This will include the various libraries for including the Kafka components within your project.

By default, the **'Kafka'** libraries are not included.  You must include them in your dependency chain to be included in your project.


## Stack POM Definitions Available
The following describe each of the Stack POM file contained in the stacks directory of this project:

* **couchbase**:  Will include CouchBase Dependency chain.
* **graphql**:    Will include GraphQL Dependency chain.
* **jpa**:        Will include Spring JPA Dependency chain.
* **kafka**:      Will include Kafka Dependency chain.
* **oracle**:     Will include Oracle JDBC and Spring JDBC Dependency chain.
* **reactive**:   Will include Spring WebFlux Reactive and OpenAPI Dependency chain.
* **web**:        Will include Spring Web and Swagger Non-Reactive Dependency chain.

_The above are examples and should be used only after thoughly testing your SB Bootstrap with your applicable dependency versions._
_Feel free to construct your own and post as a pull request._

## Layered JARs
This packaging phase of the Maven build process uses Layered JARs.  Basically, this allows for ordering of various artifacts
so that the JAR is optimized as possible and specific layers can be used as needed. 
This is specifcally useful in Docker implementations.

### Layered JAR Resource
* https://docs.spring.io/spring-boot/docs/2.3.2.RELEASE/maven-plugin/reference/html/

* https://blog.tratif.com/2020/05/20/spring-tips-2-layered-jars-with-spring-boot-2-3-0/

### Useful Commands

#### Show Layers in a JAR

```
$ java -Djarmode=layertools -jar target/cctester.jar list

dependencies
spring-boot-loader
internal-dependencies
snapshot-dependencies
application

```

By Default using a custom Layered JAR approach does require you to place a 'layers.xml' file in your 
source project located at: 'src/layers'.

For Example, place the following in 'src/layers/layers.xml':

```
<layers xmlns="http://www.springframework.org/schema/boot/layers"
        xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
        xsi:schemaLocation="http://www.springframework.org/schema/boot/layers
        https://www.springframework.org/schema/boot/layers/layers-2.3.xsd">
    <application>
        <into layer="spring-boot-loader">
            <include>org/springframework/boot/loader/**</include>
        </into>
        <into layer="application"/>
    </application>
    <dependencies>
        <into layer="snapshot-dependencies">
            <include>*:*:*SNAPSHOT</include>
        </into>
        <into layer="internal-dependencies">
            <include>io.yourdomain.*:*:*</include>
        </into>
        <into layer="dependencies"/>
    </dependencies>
    <layerOrder>
        <layer>dependencies</layer>
        <layer>spring-boot-loader</layer>
        <layer>internal-dependencies</layer>
        <layer>snapshot-dependencies</layer>
        <layer>application</layer>
    </layerOrder>
</layers>
```

You may need to adjust the includes above for additional internal-dependencies as per your project
and applicable artifact names.

# CI/CD
Use any deployment framework you wish, as long as the parent POM is successfully deployed to a maven repository and 
accessible as a standard Maven dependency when requested.

-------------

# Release Notes

## 0.0.1
* Uses Spring Boot Version 2.6.3 and latest dependencies
* Set version of Log4J2 to 2.17.1, use Spring Boot Version 2.5.8
* Support for check style plug-in for Java 17 LTS.




