# Your-SB-Parent-POM
Your defined stack standards for Spring Boot Projects
Purpose is to provide a common Spring Boot version and associated libraries for Your Spring Boot Builds.

## Current Base Dependency Tree Versions Established
This does not include dependencies which you select by referencing a 'stack' POM(s) or other dependencies to your project.

```
 $ mvn dependency:tree | tee tree.log
 
 
 
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
* Uses Spring Boot Version 2.6.2 and latest dependencies
* Set version of Log4J2 to 2.17.1, use Spring Boot Version 2.5.8
* Support for check style plug-in for Java 17 LTS.




